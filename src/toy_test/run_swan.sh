# python ../edit.py  --source_prompt "A documentary-style cinematic shot of a black swan swimming gracefully in a calm river, with elegant black feathers that shimmer subtly under the light, a bright red beak tipped with white, and a long curved neck gliding smoothly, as soft sunlight reflects off the water casting gentle golden highlights across its back, the background filled with rich green foliage and soft ripples on the surface, enhancing the natural atmosphere with a sense of depth and motion, captured in mid-range, side-angle perspective with smooth natural movement." \
#                 --target_prompt "A documentary-style cinematic shot of a golden swan swimming gracefully in a calm river, with elegant golden feathers that shimmer subtly under the light, a bright red beak tipped with white, and a long curved neck gliding smoothly, as soft sunlight reflects off the water casting gentle golden highlights across its back, the background filled with rich green foliage and soft ripples on the surface, enhancing the natural atmosphere with a sense of depth and motion, captured in mid-range, side-angle perspective with smooth natural movement." \
#                 --guidance 1.5 \
#                 --source_img_dir '../examples/source/swan.jpg' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/swan' \
#                 --controlnet_type 'single' \
#                 --vis_path '../examples/edit-map-visualization/swan' \
                # --mask_path '../examples/mask/swan.png'

python ../edit.py  --source_prompt "A documentary-style cinematic shot of a black swan swimming gracefully in a calm river, with elegant black feathers that shimmer subtly under the light, a bright red beak tipped with white, and a long curved neck gliding smoothly, as soft sunlight reflects off the water casting gentle golden highlights across its back, the background filled with rich green foliage and soft ripples on the surface, enhancing the natural atmosphere with a sense of depth and motion, captured in mid-range, side-angle perspective with smooth natural movement." \
                --target_prompt "A documentary-style cinematic shot of a tiny brown wooden boat gliding gently along a calm river, with aged, dark brown wood planks and a simple curved hull that reflects softly in the water, a lone oar resting at its side, drifting smoothly under the golden sunlight, surrounded by rich green foliage and gentle ripples that mirror the serene atmosphere, captured in mid-range, side-angle perspective with smooth natural motion." \
                --guidance 3 \
                --source_img_dir '../examples/source/swan.jpg' \
                --num_steps 15 --offload \
                --inject 3 \
                --name 'flux-dev'  \
                --output_dir '../examples/edit-result/swan' \
                --controlnet_type 'single' \
                --vis_path '../examples/edit-map-visualization/swan' \
                # --mask_path '../examples/mask/swan.png' \




# python ../edit.py  --source_prompt "A cinematic shot of a black swan swimming in a river, with a golden glow from the sun reflecting off the water's surface. The swan's feathers shimmer in the light, and it has a long, curved neck and a bright red beak. The background is filled with lush greenery and soft ripples in the water. The shot is captured in mid-range, side-angle perspective, with smooth natural movement." \
#                 --target_prompt " A cinematic shot of a wooden boat floating gracefully in a calm river, as soft sunlight reflects off the water casting gentle golden highlights across its back, the background filled with rich green foliage and soft ripples on the surface, enhancing the natural atmosphere with a sense of depth and motion, captured in mid-range, side-angle perspective with smooth natural movement." \
#                 --guidance 2 \
#                 --source_img_dir '../examples/source/swan.jpg' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/swan' \
#                 --controlnet_type 'single' \


# python ../edit.py  --source_prompt "A documentary-style cinematic shot of a black swan swimming gracefully in a calm river, with elegant black feathers that shimmer subtly under the light, a bright red beak tipped with white, and a long curved neck gliding smoothly, as soft sunlight reflects off the water casting gentle golden highlights across its back, the background filled with rich green foliage and soft ripples on the surface, enhancing the natural atmosphere with a sense of depth and motion, captured in mid-range, side-angle perspective with smooth natural movement." \
#                 --target_prompt "A documentary-style cinematic shot of a red flamingo standing gracefully in a calm river, with strikingly red feathers that shimmer subtly under the light, a distinctively curved beak, and long slender legs partially submerged, as soft sunlight reflects off the water casting warm golden tones across the brightly colored feathers, the background filled with lush green foliage and subtle water ripples, enhancing the natural atmosphere with a sense of depth and motion, captured in mid-range, side-angle perspective with smooth natural movement." \
#                 --guidance 3 \
#                 --source_img_dir '../examples/source/swan.jpg' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/swan' \
#                 --controlnet_type 'single' \
#                 --vis_path '../examples/edit-map-visualization/swan' \


# python edit.py  --source_prompt "A documentary-style cinematic shot of a black swan swimming gracefully in a calm river, with elegant black feathers that shimmer subtly under the light, a bright red beak tipped with white, and a long curved neck gliding smoothly, as soft sunlight reflects off the water casting gentle golden highlights across its back, the background filled with rich green foliage and soft ripples on the surface, enhancing the natural atmosphere with a sense of depth and motion, captured in mid-range, side-angle perspective with smooth natural movement." \
#                 --target_prompt "A documentary-style cinematic shot of a small colorful bird perched on a floating leaf in a calm river, with vibrant blue and yellow feathers, a short pointed beak, as soft sunlight reflects off the water casting gentle golden highlights across its back, the background filled with rich green foliage and soft ripples on the surface, enhancing the natural atmosphere with a sense of depth and motion, captured in mid-range, side-angle perspective with smooth natural movement." \
#                 --guidance 2 \
#                 --source_img_dir 'examples/source/swan.jpg' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir 'examples/edit-result/swan' \
#                 --controlnet_type 'single' \


# python edit.py  --source_prompt "A documentary-style cinematic shot of a black swan swimming gracefully in a calm river, with elegant black feathers that shimmer subtly under the light, a bright red beak tipped with white, and a long curved neck gliding smoothly, as soft sunlight reflects off the water casting gentle golden highlights across its back, the background filled with rich green foliage and soft ripples on the surface, enhancing the natural atmosphere with a sense of depth and motion, captured in mid-range, side-angle perspective with smooth natural movement." \
#                 --target_prompt "A documentary-style cinematic shot of a turtle slowly gliding through a calm river, with a dark green domed shell that glistens under the soft sunlight, short sturdy limbs gently paddling through the water, and a small head peeking forward with calm expression, as soft sunlight reflects off the water casting gentle golden highlights across its back, the background filled with rich green foliage and soft ripples on the surface, enhancing the natural atmosphere with a sense of depth and motion, captured in mid-range, side-angle perspective with smooth natural movement." \
#                 --guidance 2 \
#                 --source_img_dir 'examples/source/swan.jpg' \
#                 --num_steps 15 --offload \
#                 --inject 4 \
#                 --name 'flux-dev'  \
#                 --output_dir 'examples/edit-result/swan' \
#                 --controlnet_type 'single' \


# python edit.py  --source_prompt "A documentary-style cinematic shot of a black swan swimming gracefully in a calm river, with elegant black feathers that shimmer subtly under the light, a bright red beak tipped with white, and a long curved neck gliding smoothly, as soft sunlight reflects off the water casting gentle golden highlights across its back, the background filled with rich green foliage and soft ripples on the surface, enhancing the natural atmosphere with a sense of depth and motion, captured in mid-range, side-angle perspective with smooth natural movement." \
#                 --target_prompt "A documentary-style cinematic shot of a water otter floating playfully on its back in a calm river, with sleek brown fur, tiny paws folded over its chest, and a relaxed expression under the warm golden sunlight, the background filled with rich green foliage and soft ripples on the surface, enhancing the natural atmosphere with a sense of depth and motion, captured in mid-range, side-angle perspective with smooth natural movement." \
#                 --guidance 2 \
#                 --source_img_dir 'examples/source/swan.jpg' \
#                 --num_steps 15 --offload \
#                 --inject 4 \
#                 --name 'flux-dev'  \
#                 --output_dir 'examples/edit-result/swan' \
#                 --controlnet_type 'single' \


# python edit.py  --source_prompt "A documentary-style cinematic shot of a black swan swimming gracefully in a calm river, with elegant black feathers that shimmer subtly under the light, a bright red beak tipped with white, and a long curved neck gliding smoothly, as soft sunlight reflects off the water casting gentle golden highlights across its back, the background filled with rich green foliage and soft ripples on the surface, enhancing the natural atmosphere with a sense of depth and motion, captured in mid-range, side-angle perspective with smooth natural movement." \
#                 --target_prompt "A documentary-style cinematic shot of a crocodile gliding silently through a calm river, with a rough, dark-scaled back partially above the water, piercing eyes just visible above the surface, and a powerful tail creating subtle ripples behind, as soft sunlight reflects off the water casting muted golden highlights, the background filled with rich green foliage and soft ripples on the surface, enhancing the natural atmosphere with a sense of depth and motion, captured in mid-range, side-angle perspective with smooth natural movement." \
#                 --guidance 2 \
#                 --source_img_dir 'examples/source/swan.jpg' \
#                 --num_steps 15 --offload \
#                 --inject 4 \
#                 --name 'flux-dev'  \
#                 --output_dir 'examples/edit-result/swan' \


# python edit.py  --source_prompt "A documentary-style cinematic shot of a black swan swimming gracefully in a calm river, with elegant black feathers that shimmer subtly under the light, a bright red beak tipped with white, and a long curved neck gliding smoothly, as soft sunlight reflects off the water casting gentle golden highlights across its back, the background filled with rich green foliage and soft ripples on the surface, enhancing the natural atmosphere with a sense of depth and motion, captured in mid-range, side-angle perspective with smooth natural movement." \
#                 --target_prompt "A documentary-style cinematic shot of a black swan swimming gracefully in a calm river, with elegant black feathers that shimmer subtly under the light, a bright red beak tipped with white, and a long curved neck gliding smoothly, as soft sunlight reflects off the water casting gentle golden highlights across its back, the background filled with rich green foliage and soft ripples on the surface, enhancing the natural atmosphere with a sense of depth and motion, captured in mid-range, side-angle perspective with smooth natural movement." \
#                 --guidance 2 \
#                 --source_img_dir 'examples/source/swan.jpg' \
#                 --num_steps 15 --offload \
#                 --inject 5 \
#                 --name 'flux-dev'  \
#                 --output_dir 'examples/edit-result/swan' \