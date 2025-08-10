# python ../edit.py  --source_prompt "Two small birds perched on a mossy tree branch, facing each other, with a blurred background of green leaves and purple flowers." \
#                 --target_prompt "Two small dragonflies resting on top of a mossy tree branch, positioned close to each other, with a blurred background of green leaves and purple flowers." \
#                 --guidance 2 \
#                 --source_img_dir '../examples/source/bird.jpg' \
#                 --num_steps 15 --offload \
#                 --front 2 \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/toy_test' \
#                 --controlnet_type 'none' \
#                 --vis_path '../examples/edit-map-visualization/toy_test'



# python ../edit.py  --source_prompt "Two small birds perched on a mossy tree branch, facing each other. The birds have soft, fluffy feathers in shades of brown and white, giving them a natural and endearing appearance. Their posture is balanced and symmetrical, with one bird slightly leaning forward as if interacting with the other. The background features a blurred scene of green leaves and vibrant purple flowers, creating a serene and harmonious atmosphere." \
#                 --target_prompt "Two miniature robots perched on a mossy tree branch, facing each other. The robots have sleek, metallic bodies with a modern, angular design, giving them a futuristic appearance. Their structure includes glowing panels and articulated joints, allowing them to maintain a balanced and symmetrical pose similar to the original birds. The robots' surfaces reflect light softly, enhancing their high-tech aesthetic. The background features a blurred scene of green leaves and vibrant purple flowers, creating a serene and harmonious atmosphere." \
#                 --guidance 2 \
#                 --source_img_dir '../examples/source/bird.jpg' \
#                 --num_steps 15 --offload \
#                 --front 2 \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/toy_test' \
#                 --controlnet_type 'none' \
#                 --vis_path '../examples/edit-map-visualization/toy_test'


# python ../edit.py  --source_prompt "Two small birds perched on a mossy tree branch, facing each other. The birds have soft, fluffy feathers in shades of brown and white, giving them a natural and endearing appearance. Their posture is balanced and symmetrical, with one bird slightly leaning forward as if interacting with the other. The background features a blurred scene of green leaves and vibrant purple flowers, creating a serene and harmonious atmosphere." \
#                 --target_prompt "Two baseball caps are resting side by side on a mossy tree branch, positioned to face each other. One cap is primarily red with a subtle logo on the front, while the other is blue with a contrasting pattern, creating a balanced and visually appealing composition. The caps have a classic design with curved brims and structured crowns, giving them a clean and recognizable appearance. They are placed naturally on the branch, with slight tilts that suggest a casual arrangement rather than intentional posing. The background features a blurred scene of green leaves and vibrant purple flowers, maintaining the peaceful and natural atmosphere. Soft, warm lighting enhances the textures and colors of the fabric, blending the caps seamlessly into the serene jungle setting." \
#                 --guidance 2 \
#                 --source_img_dir '../examples/source/bird.jpg' \
#                 --num_steps 15 --offload \
#                 --front 2 \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/toy_test' \
#                 --controlnet_type 'none' \
#                 --vis_path '../examples/edit-map-visualization/toy_test'


python ../edit.py  --source_prompt "A vibrant macaw perches gracefully on a tree branch in a lush, tropical jungle. The bird's plumage is a stunning mix of bright red, blue, and green feathers, with intricate patterns that catch the light beautifully. Its sharp beak is slightly open, revealing its keen expression as it surveys its surroundings. The background features a serene waterfall cascading into a tranquil pool, surrounded by dense foliage and colorful flowers. The lighting is soft and warm, highlighting the rich colors of the parrot and the verdant environment, creating a peaceful and enchanting atmosphere." \
                --target_prompt "A brown hat rests gently on a tree branch in a lush, tropical jungle. The hat has a soft, textured surface with a classic design, featuring a wide brim and a small band around the base. Its color blends harmoniously with the surrounding environment, giving it a natural and unobtrusive appearance. The hat appears to have been placed deliberately, as if someone had set it there for a specific purpose. The background features a serene waterfall cascading into a tranquil pool, surrounded by dense foliage and colorful flowers. The lighting is soft and warm, highlighting the rich textures of the hat and the verdant environment, creating a peaceful and enchanting atmosphere." \
                --guidance 2 \
                --source_img_dir '../examples/source/parrot.png' \
                --num_steps 15 --offload \
                --front 2 \
                --inject 3 \
                --name 'flux-dev'  \
                --output_dir '../examples/edit-result/toy_test' \
                --controlnet_type 'none' \
                --vis_path '../examples/edit-map-visualization/toy_test'\




# python ../edit.py  --source_prompt "A vibrant macaw perches gracefully on a branch in a lush, tropical jungle. The bird's plumage is a stunning mix of bright red, blue, and green feathers, with intricate patterns that catch the light beautifully. Its sharp beak is slightly open, revealing its keen expression as it surveys its surroundings. The background features a serene waterfall cascading into a tranquil pool, surrounded by dense foliage and colorful flowers. The lighting is soft and warm, highlighting the rich colors of the parrot and the verdant environment, creating a peaceful and enchanting atmosphere." \
#                 --target_prompt "Four large, bold uppercase letters spelling out [LOVE] are individually placed on a branch in a lush, tropical jungle. Each letter stands independently, with a subtle, organic structure beneath it that connects it securely to the branch, giving the impression that they are naturally integrated into the scene. The letters are crafted from a glowing material, radiating a warm, golden hue that contrasts beautifully against the greenery. The background features a serene waterfall cascading into a tranquil pool, surrounded by dense foliage and colorful flowers. The lighting is soft and warm, highlighting the radiant glow of the letters and the verdant environment, creating a peaceful and enchanting atmosphere." \
#                 --guidance 2 \
#                 --source_img_dir '../examples/source/parrot.png' \
#                 --num_steps 15 --offload \
#                 --front 2 \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/toy_test' \
#                 --controlnet_type 'none' \
#                 --vis_path '../examples/edit-map-visualization/toy_test'\