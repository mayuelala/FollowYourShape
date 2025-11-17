import os
import re
import time
from dataclasses import dataclass
from glob import iglob
import argparse
import torch
from einops import rearrange
from fire import Fire
from PIL import ExifTags, Image

from flux.sampling import denoise, get_schedule, prepare, unpack, denoise_with_TDM, build_inject_list
from flux.util import (configs, embed_watermark, load_ae, load_clip,
                       load_flow_model, load_t5)
from transformers import pipeline, DPTForDepthEstimation, DPTImageProcessor
from PIL import Image
import numpy as np
import cv2
from diffusers import FluxControlNetModel, FluxMultiControlNetModel

from torch import tensor

import os

NSFW_THRESHOLD = 0.85

@dataclass
class SamplingOptions:
    source_prompt: str
    target_prompt: str
    # prompt: str
    width: int
    height: int
    num_steps: int
    guidance: float
    seed: int | None

@torch.inference_mode()
def encode(init_image, torch_device, ae):
    init_image = torch.from_numpy(init_image).permute(2, 0, 1).float() / 127.5 - 1
    init_image = init_image.unsqueeze(0) 
    init_image = init_image.to(torch_device)
    init_image = ae.encode(init_image.to()).to(torch.bfloat16)
    return init_image


def generate_depth_control_image(source_img: Image.Image, device="cuda"):
    model = DPTForDepthEstimation.from_pretrained("Intel/dpt-hybrid-midas").to(device).eval()
    processor = DPTImageProcessor.from_pretrained("Intel/dpt-hybrid-midas", use_fast=True)
    W, H = source_img.size
    inputs = processor(images=source_img, return_tensors="pt").to(device)
    with torch.no_grad():
        depth_map = model(**inputs).predicted_depth[0].cpu().numpy()
    depth_resized = cv2.resize(depth_map, (W, H), interpolation=cv2.INTER_CUBIC)
    depth_norm = cv2.normalize(depth_resized, None, 0, 255, cv2.NORM_MINMAX).astype(np.uint8)
    depth_rgb = cv2.cvtColor(depth_norm, cv2.COLOR_GRAY2RGB)
    return Image.fromarray(depth_rgb)


def generate_canny_control_image(source_img: Image.Image, device="cuda"):
    W, H = source_img.size
    image_gray = np.array(source_img.convert("L"))
    image_edges = cv2.Canny(image_gray, 100, 200)
    edge_rgb = cv2.cvtColor(image_edges, cv2.COLOR_GRAY2RGB)
    return Image.fromarray(edge_rgb)


@torch.inference_mode()
def main(
    args,
    seed: int | None = None,
    device: str = "cuda" if torch.cuda.is_available() else "cpu",
    num_steps: int | None = None,
    loop: bool = False,
    offload: bool = False,
    add_sampling_metadata: bool = True,
):
    """
    Sample the flux model. Either interactively (set `--loop`) or run for a
    single image.

    Args:
        name: Name of the model to load
        height: height of the sample in pixels (should be a multiple of 16)
        width: width of the sample in pixels (should be a multiple of 16)
        seed: Set a seed for sampling
        output_name: where to save the output image, `{idx}` will be replaced
            by the index of the sample
        prompt: Prompt used for sampling
        device: Pytorch device
        num_steps: number of sampling steps (default 4 for schnell, 50 for guidance distilled)
        loop: start an interactive session and sample multiple times
        guidance: guidance value used for guidance distillation
        add_sampling_metadata: Add the prompt to the image Exif metadata
    """
    torch.set_grad_enabled(False)
    name = args.name
    source_prompt = args.source_prompt
    target_prompt = args.target_prompt
    guidance = args.guidance
    output_dir = args.output_dir
    num_steps = args.num_steps
    offload = args.offload

    nsfw_classifier = pipeline("image-classification", model="Falconsai/nsfw_image_detection", device=device)

    if name not in configs:
        available = ", ".join(configs.keys())
        raise ValueError(f"Got unknown model name: {name}, chose from {available}")

    torch_device = torch.device(device)
    if num_steps is None:
        num_steps = 4 if name == "flux-schnell" else 25

    # init all components
    t5 = load_t5(torch_device, max_length=256 if name == "flux-schnell" else 512)
    clip = load_clip(torch_device)
    model = load_flow_model(name, device="cpu" if offload else torch_device)
    ae = load_ae(name, device="cpu" if offload else torch_device)


    if offload:
        model.cpu()
        torch.cuda.empty_cache()
        ae.encoder.to(torch_device)
    
    init_image = None
    raw_pil_image = Image.open(args.source_img_dir).convert('RGB')
    init_image = np.array(raw_pil_image)
    
    shape = init_image.shape

    new_h = shape[0] if shape[0] % 16 == 0 else shape[0] - shape[0] % 16
    new_w = shape[1] if shape[1] % 16 == 0 else shape[1] - shape[1] % 16
    init_image = init_image[:new_h, :new_w, :]
    width, height = init_image.shape[0], init_image.shape[1]


    # Process controlnet
    if args.controlnet_type == 'single':
        if args.controlnet_kind == 'depth':
            control_pil = generate_depth_control_image(raw_pil_image, device=torch_device)
            controlnet = FluxControlNetModel.from_pretrained("Shakker-Labs/FLUX.1-dev-ControlNet-Depth", torch_dtype=torch.bfloat16).to(torch_device)
        elif args.controlnet_kind == 'canny':
            control_pil = generate_canny_control_image(raw_pil_image, device=torch_device)
            controlnet = FluxControlNetModel.from_pretrained("InstantX/FLUX.1-dev-Controlnet-Canny", torch_dtype=torch.bfloat16).to(torch_device)

        control_pil = control_pil.crop((0, 0, new_w, new_h))

        # control_pil.save("control_map_preview.png")
        
        control_tensor = (torch.from_numpy(np.array(control_pil)).permute(2, 0, 1).float().unsqueeze(0) / 255.0).to(torch_device).to(torch.bfloat16)
        control_tensor = control_tensor * 2 - 1
        control_latent = ae.encode(control_tensor.float())
        control_patch = rearrange(control_latent, "b c (h ph) (w pw) -> b (h w) (c ph pw)", ph=2, pw=2).to(torch.bfloat16)

        print(f'Processed using {args.controlnet_kind} controlnet')
    
    elif args.controlnet_type == 'multi':

        if args.controlnet_kind != 'depth':
            print("Warning: `--controlnet_kind` is ignored when `--controlnet_type` is 'multi'.")

        controlnet_union = FluxControlNetModel.from_pretrained('Shakker-Labs/FLUX.1-dev-ControlNet-Union-Pro', torch_dtype=torch.bfloat16).to(torch_device)
        controlnet = FluxMultiControlNetModel([controlnet_union])

        control_pils = [
            generate_depth_control_image(raw_pil_image, device=torch_device),
            generate_canny_control_image(raw_pil_image, device=torch_device)
        ]
        control_patches = []
        for idx, control_pil in enumerate(control_pils):
            control_pil = control_pil.crop((0, 0, new_w, new_h))

            # control_pil.save(f"control_map_preview_{idx + 1}.png")

            control_tensor = (torch.from_numpy(np.array(control_pil)).permute(2, 0, 1).float().unsqueeze(0) / 255.0).to(torch_device).to(torch.bfloat16)
            control_tensor = control_tensor * 2 - 1
            control_latent = ae.encode(control_tensor.float())
            control_patch_i = rearrange(control_latent, "b c (h ph) (w pw) -> b (h w) (c ph pw)", ph=2, pw=2).to(torch.bfloat16)
            control_patches.append(control_patch_i)

        control_patch = control_patches

        print(f'Processed using multi controlnet')
    else:
        controlnet = None
        control_patch = None


    init_image = encode(init_image, torch_device, ae)
    print("Encoded source image with shape:", init_image.shape)


    # process mask if provided
    if args.mask_path is not None:
        print("Processing mask from:", args.mask_path)
        mask_img = Image.open(args.mask_path).convert("L") 
        mask_np = np.array(mask_img)
        binary = (mask_np > 0).astype(np.float32)
        mask_tensor = torch.from_numpy(binary).unsqueeze(0).unsqueeze(0)  # [1, 1, H, W]
        mask_tensor = torch.nn.functional.interpolate(mask_tensor, size=init_image.shape[2:], mode="bilinear", align_corners=False)
        mask_tensor = (mask_tensor > 0).float()
        ph, pw = 2, 2  # patch size
        pooled = torch.nn.functional.max_pool2d(mask_tensor, kernel_size=(ph, pw), stride=(ph, pw))  # [1, 1, H//ph, W//pw]
        patchified = pooled[0, 0]  
        patchified_flat = patchified.flatten()  # [H//ph * W//pw]
        mask_indices = (patchified_flat > 0).nonzero(as_tuple=False).squeeze(1)


    rng = torch.Generator(device="cpu")
    opts = SamplingOptions(
        source_prompt=source_prompt,
        target_prompt=target_prompt,
        width=width,
        height=height,
        num_steps=num_steps,
        guidance=guidance,
        seed=seed,
    )

    if loop:
        opts = parse_prompt(opts)

    while opts is not None:
        if opts.seed is None:
            opts.seed = rng.seed()
        print(f"Generating with seed {opts.seed}:\n{opts.source_prompt}")
        t0 = time.perf_counter()

        opts.seed = None
        if offload:
            ae = ae.cpu()
            torch.cuda.empty_cache()
            t5, clip = t5.to(torch_device), clip.to(torch_device)

        info = {}
        info['feature_path'] = args.feature_path
        info['feature'] = {}
        info['inject_step'] = args.inject

        if args.vis_path is not None:
            info["vis_path"] = args.vis_path

        if args.mask_path is not None:
            info['mask'] = mask_indices

        if not os.path.exists(args.feature_path):
            os.mkdir(args.feature_path)

        inp = prepare(t5, clip, init_image, prompt=opts.source_prompt)
        inp_target = prepare(t5, clip, init_image, prompt=opts.target_prompt)
        timesteps = get_schedule(opts.num_steps, inp["img"].shape[1], shift=(name != "flux-schnell"))

        # offload TEs to CPU, load model to gpu
        if offload:
            t5, clip = t5.cpu(), clip.cpu()
            torch.cuda.empty_cache()
            model = model.to(torch_device)


        inject_list = build_inject_list(num_inference_steps=len(timesteps), inject_step=info['inject_step'], tail_pad=1, front_pad=args.front) 


        print(timesteps)

        if args.controlnet_type == 'single':
            control_mode = 0
            controlnet_scale = 0.5
            guidance_start = 0.0
            guidance_end = 0.4
        elif args.controlnet_type == 'multi':
            control_mode = [tensor([0], dtype=torch.long).to(torch_device),  tensor([0], dtype=torch.long).to(torch_device)]
            controlnet_scale = [2.5, 3.35]
            guidance_start = 0.1
            guidance_end = 0.7
        else: 
            control_mode = None
            controlnet_scale = None
            guidance_start = 0.0
            guidance_end = 0.0

        # inversion initial noise
        z, info = denoise(model, **inp, timesteps=timesteps, guidance=1, inverse=True, info=info, inject_list=inject_list, 
                        controlnet=controlnet, control_patch=control_patch, controlnet_scale=controlnet_scale, controlnet_mode=control_mode, guidance_start=guidance_start, guidance_end=guidance_end)
        
        inp_target["img"] = z

        timesteps = get_schedule(opts.num_steps, inp_target["img"].shape[1], shift=(name != "flux-schnell"))

        # denoise initial noise

        x, _ = denoise_with_TDM(model, **inp_target, timesteps=timesteps, guidance=guidance, inverse=False, info=info, width=opts.width, height=opts.height, inject_list=inject_list, tail_pad=1, front_pad=args.front,
                                       controlnet=controlnet, control_patch=control_patch, controlnet_scale=controlnet_scale, controlnet_mode=control_mode, guidance_start=guidance_start, guidance_end=guidance_end)       

        
        if offload:
            model.cpu()
            torch.cuda.empty_cache()
            ae.decoder.to(x.device)

        # decode latents to pixel space
        batch_x = unpack(x.float(), opts.width, opts.height)

        for x in batch_x:
            x = x.unsqueeze(0)
            output_name = os.path.join(output_dir, "img_{idx}.jpg")
            if not os.path.exists(output_dir):
                os.makedirs(output_dir)
                idx = 0
            else:
                fns = [fn for fn in iglob(output_name.format(idx="*")) if re.search(r"img_[0-9]+\.jpg$", fn)]
                if len(fns) > 0:
                    idx = max(int(fn.split("_")[-1].split(".")[0]) for fn in fns) + 1
                else:
                    idx = 0

            with torch.autocast(device_type=torch_device.type, dtype=torch.bfloat16):
                x = ae.decode(x)

            print(f"Decoded image with shape: {x.shape}")

            if torch.cuda.is_available():
                torch.cuda.synchronize()
            t1 = time.perf_counter()

            fn = output_name.format(idx=idx)
            print(f"Done in {t1 - t0:.1f}s. Saving {fn}")
            # bring into PIL format and save
            x = x.clamp(-1, 1)
            x = embed_watermark(x.float())
            x = rearrange(x[0], "c h w -> h w c")

            img = Image.fromarray((127.5 * (x + 1.0)).cpu().byte().numpy())

            # img.save(output_dir)
            # print(f"Saved edited image: {output_dir}")


            nsfw_score = [x["score"] for x in nsfw_classifier(img) if x["label"] == "nsfw"][0]
            
            if nsfw_score < NSFW_THRESHOLD:
                exif_data = Image.Exif()
                exif_data[ExifTags.Base.Software] = "AI generated;txt2img;flux"
                exif_data[ExifTags.Base.Make] = "Black Forest Labs"
                exif_data[ExifTags.Base.Model] = name
                if add_sampling_metadata:
                    exif_data[ExifTags.Base.ImageDescription] = source_prompt
                img.save(fn, exif=exif_data, quality=95, subsampling=0)
                idx += 1
            else:
                print("Your generated image may contain NSFW content.")

            if loop:
                print("-" * 80)
                opts = parse_prompt(opts)
            else:
                opts = None

if __name__ == "__main__":
    
    parser = argparse.ArgumentParser(description='RF-Edit')

    parser.add_argument('--name', default='flux-dev', type=str,
                        help='flux model')
    parser.add_argument('--source_img_dir', default='', type=str,
                        help='The path of the source image')
    parser.add_argument('--source_prompt', type=str,
                        help='describe the content of the source image (or leaves it as null)')
    parser.add_argument('--target_prompt', type=str,
                        help='describe the requirement of editing')
    parser.add_argument('--feature_path', type=str, default='feature',
                        help='the path to save the feature ')
    parser.add_argument('--guidance', type=float, default=3,
                        help='guidance scale')
    parser.add_argument('--num_steps', type=int, default=15,
                        help='the number of timesteps for inversion and denoising')
    parser.add_argument('--front', type=int, default=2,
                        help='the number of timesteps of early trajectory initialization')
    parser.add_argument('--inject', type=int, default=4,
                        help='the number of timesteps which apply the feature sharing')
    parser.add_argument('--output_dir', default='output', type=str,
                        help='the path of the edited image')
    parser.add_argument('--offload', action='store_true', help='set it to True if the memory of GPU is not enough')
    parser.add_argument('--mask_path', default=None, type=str, help='path to the binary mask image')
    parser.add_argument('--controlnet_type', type=str, default='none', choices=['none', 'single', 'multi'],
                        help="ControlNet type: 'none' for no control, 'single' for depth or canny, 'multi' for both")
    parser.add_argument('--controlnet_kind', type=str, default='depth', choices=['depth', 'canny'],
                        help="When using 'single' ControlNet, choose 'depth' or 'canny'")
    parser.add_argument('--vis_path', default=None, type=str,
                        help='path to save edit map visualization')


    args = parser.parse_args()

    main(args)
