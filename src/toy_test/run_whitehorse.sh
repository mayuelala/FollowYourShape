# python edit.py  --source_prompt "A documentary-style cinematic shot of a black swan swimming gracefully in a calm river, with elegant black feathers that shimmer subtly under the light, a bright red beak tipped with white, and a long curved neck gliding smoothly, as soft sunlight reflects off the water casting gentle golden highlights across its back, the background filled with rich green foliage and soft ripples on the surface, enhancing the natural atmosphere with a sense of depth and motion, captured in mid-range, side-angle perspective with smooth natural movement." \
#                 --target_prompt "A documentary-style cinematic shot of a white swan swimming gracefully in a calm river, with elegant white feathers that shimmer subtly under the light, a bright red beak tipped with white, and a long curved neck gliding smoothly, as soft sunlight reflects off the water casting gentle golden highlights across its back, the background filled with rich green foliage and soft ripples on the surface, enhancing the natural atmosphere with a sense of depth and motion, captured in mid-range, side-angle perspective with smooth natural movement." \
#                 --guidance 2 \
#                 --source_img_dir 'examples/source/swan.jpg' \
#                 --num_steps 15 --offload \
#                 --inject 4 \
#                 --name 'flux-dev'  \
#                 --output_dir 'examples/edit-result/swan' \
#                 --controlnet_type 'multi' \
                # --mask_path 'examples/mask/swan.png'

# python ../edit.py  --source_prompt "A white horse running on a grassy field near the woods, with the setting sun illuminating its mane. The background consists of dim trees, and warm sunlight filters through the branches." \
#                 --target_prompt "A red dragon with large wings running on a grassy field near the woods, with the setting sun casting golden light on its scales. The background consists of dim trees, and warm sunlight filters through the branches." \
#                 --guidance 3 \
#                 --source_img_dir '../examples/source/white_horse.jpg' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/white_horse' \
#                 --controlnet_type 'single' \
#                 --vis_path '../examples/edit-map-visualization/white_horse'


python ../edit.py  --source_prompt "A white horse galloping on a dirt paddock at sunset, with leafless trees in the background and soft golden light casting long shadows across the ground." \
                --target_prompt "A zebra galloping on a dirt paddock at sunset, with leafless trees in the background and soft golden light casting long shadows across the ground." \
                --guidance 5 \
                --source_img_dir '../examples/source/white_horse.jpg' \
                --num_steps 15 --offload \
                --inject 3 \
                --name 'flux-dev'  \
                --output_dir '../examples/edit-result/white_horse' \
                --controlnet_type 'single' \
                --vis_path '../examples/edit-map-visualization/white_horse'