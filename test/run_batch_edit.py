import json
import os
import subprocess


with open("../data/mapping_file.json", "r") as f:
    mapping = json.load(f)

edit_py_path = "../src/edit.py"  

default_args = {
    "guidance": "3.5",
    "num_steps": "15",
    "offload": "",
    "inject": "3",
    "name": "flux-dev",
    "controlnet_type": "none"
}



for idx, (key, item) in enumerate(mapping.items()):
    if item.get("editing_type_id") != "0":
        continue

    # source_prompt = item["original_prompt"]
    # target_prompt = item["editing_prompt"]

    source_prompt = item["original_prompt"].replace("[", "").replace("]", "")
    base_prompt = item["editing_prompt"].replace("[", "").replace("]", "")
    instruction = item["editing_instruction"]
    target_prompt = f"{base_prompt}. Instruction: {instruction}"




    source_img = os.path.abspath(os.path.join("..", "data", item["image_path"]))


    task_name = "random_140"
    img_name = os.path.splitext(os.path.basename(item["image_path"]))[0]
    # output_dir = os.path.abspath(os.path.join("..", "src", "examples", "edit-result", task_name, img_name))
    # os.makedirs(output_dir, exist_ok=True)


    method_name = "edit_any_shape"
    base_output_dir = os.path.abspath(os.path.join("..", "output", method_name, "annotation_images"))
    relative_path = item["image_path"] 
    output_img_dir = os.path.join(base_output_dir, os.path.dirname(relative_path))  
    output_img_path = os.path.join(base_output_dir, relative_path) 

    os.makedirs(output_img_dir, exist_ok=True)

    editmap_vis_dir = os.path.abspath(os.path.join("..", "src", "examples", "edit-map-visualization", task_name, img_name))
    delta_dir = os.path.join(editmap_vis_dir, "delta")
    os.makedirs(delta_dir, exist_ok=True)


    command = [
        "python", edit_py_path,
        "--source_prompt", f"{source_prompt}",
        "--target_prompt", f"{target_prompt}",
        "--source_img_dir", f"{source_img}",
        "--output_dir", f"{output_img_path}",
        "--vis_path", f"{editmap_vis_dir}"
    ]

    for k, v in default_args.items():
        command.append(f"--{k}")
        if v != "":
            command.append(v)

    print(f"\n=== Running [{idx}/{len(mapping)}]: {task_name} ===")
    print("\n".join(command))
    subprocess.run(command)
