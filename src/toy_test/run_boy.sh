# python edit.py  --source_prompt "A young boy is playing with a toy airplane on the grassy front lawn of a suburban house, with a blue sky and fluffy clouds above." \
#                 --target_prompt "A young boy is playing with a toy airplane on the grassy front lawn of a suburban house, with a small brown dog playing beside him, and a blue sky with fluffy clouds above." \
#                 --guidance 2 \
#                 --source_img_dir 'examples/source/boy.jpg' \
#                 --num_steps 15 --offload \
#                 --inject 4 \
#                 --name 'flux-dev'  \
#                 --output_dir 'examples/edit-result/dog' 


# python edit.py  --source_prompt "A young boy is playing with a toy airplane on the grassy front lawn of a suburban house, with a blue sky and fluffy clouds above." \
#                 --target_prompt "A young boy is playing with a toy airplane on the grassy front lawn of a suburban house, with a blue sky filled with fluffy clouds and colorful hot air balloons above." \
#                 --guidance 2 \
#                 --source_img_dir 'examples/source/boy.jpg' \
#                 --num_steps 15 --offload \
#                 --inject 4 \
#                 --name 'flux-dev'  \
#                 --output_dir 'examples/edit-result/dog' 


# python ../edit.py  --source_prompt "A young boy is sitting on a lush green lawn in front of a suburban house, playing with a bright red toy airplane. The boy is wearing overalls and a plaid shirt, and he has a joyful expression as he holds the toy plane in his hands. The background features a clear blue sky with fluffy white clouds, and the house behind him has a beige exterior with a garage door. The scene is bright and sunny, creating a cheerful and playful atmosphere." \
#                 --target_prompt "A plush teddy bear is sitting on a lush green lawn in front of a suburban house, holding a bright red toy airplane. The teddy bear is positioned as if it were playing with the toy plane, with its arms extended to mimic the action of flying the plane. The background features a clear blue sky with fluffy white clouds, and the house behind it has a beige exterior with a garage door. The scene is bright and sunny, creating a cheerful and playful atmosphere." \
#                 --guidance 2.5 \
#                 --source_img_dir '../examples/source/boy.png' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/boy' \
#                 --controlnet_type 'multi' \
#                 --vis_path '../examples/edit-map-visualization/dog'

# CN 0.1-0.7 scale 1.4 multi FP=2


# python ../edit.py  --source_prompt "A young boy is sitting on a lush green lawn in front of a suburban house, playing with a bright red toy airplane. The boy is wearing overalls and a plaid shirt, and he has a joyful expression as he holds the toy plane in his hands. The background features a clear blue sky with fluffy white clouds, and the house behind him has a beige exterior with a garage door. The scene is bright and sunny, creating a cheerful and playful atmosphere." \
#                 --target_prompt "A chameleon is laying on a lush green lawn in front of a suburban house, playing bright red toy airplane. The chameleon is positioned as if it were playing with the toy plane, using its gripped hands and alert posture to mimic the action of flying the plane. The background features a clear blue sky with fluffy white clouds, and the house behind it has a beige exterior with a garage door. The scene is bright and sunny, creating a cheerful and playful atmosphere." \
#                 --guidance 2.5 \
#                 --source_img_dir '../examples/source/boy.png' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/boy' \
#                 --controlnet_type 'multi' \
#                 --vis_path '../examples/edit-map-visualization/dog'

# CN 0.1-0.4 scale 0.4, 0.3 multi FP=2


# python ../edit.py  --source_prompt "A young boy is sitting on a lush green lawn in front of a suburban house, playing with a bright red toy airplane. The boy is wearing overalls and a plaid shirt, and he has a joyful expression as he holds the toy plane in his hands. The background features a clear blue sky with fluffy white clouds, and the house behind him has a beige exterior with a garage door. The scene is bright and sunny, creating a cheerful and playful atmosphere." \
#                 --target_prompt "The young boy has been removed from the scene, leaving only a soccer ball resting on a lush green lawn in front of a suburban house. The soccer ball is positioned at where the boy would have been sitting. The red toy airplane remains in exactly the same position and orientation as before, resting steadily on the grass where the boy was holding it. The soccer ball appears to be stationary, giving the impression that it is "watching" or "guarding" the toy plane. The background features a clear blue sky with fluffy white clouds, and the house behind it has a beige exterior with a garage door. The scene is bright and sunny, creating a cheerful and playful atmosphere." \
#                 --guidance 2 \
#                 --source_img_dir '../examples/source/boy.png' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/boy' \
#                 --controlnet_type 'none' \
#                 --vis_path '../examples/edit-map-visualization/dog'


# python ../edit.py  --source_prompt "A young boy is sitting on a lush green lawn in front of a suburban house. A bright red toy airplane stands on the grass nearby, facing forward but angled slightly to the right. Its surface is smooth and glossy, with subtle highlights that reflect the sunny sky. The boy is wearing overalls and a plaid shirt, and he has a joyful expression on his face. The background features a clear blue sky with fluffy white clouds, and the house behind him has a beige exterior with a garage door. The scene is bright and sunny, creating a cheerful and playful atmosphere." \
#                 --target_prompt "A round soccer ball rests on a lush green lawn in front of a suburban house. A bright red toy airplane stands on the grass nearby, facing forward but angled slightly to the right. Its surface is smooth and glossy, with subtle highlights that reflect the sunny sky. The ball is black and white with a classic pentagon pattern, its surface slightly worn from use but still clean and shiny under the sunlight. The background features a clear blue sky with fluffy white clouds, and the house behind it has a beige exterior with a garage door. The scene is bright and sunny, creating a cheerful and playful atmosphere." \
#                 --guidance 2 \
#                 --source_img_dir '../examples/source/boy.png' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/boy' \
#                 --controlnet_type 'multi' \
#                 --vis_path '../examples/edit-map-visualization/dog'


# python ../edit.py  --source_prompt "A young boy is sitting on a lush green lawn in front of a suburban house. A bright red toy airplane stands on the grass nearby, facing forward but angled slightly to the right. Its surface is smooth and glossy, with subtle highlights that reflect the sunny sky. The boy is wearing overalls and a plaid shirt, and he has a joyful expression on his face. The background features a clear blue sky with fluffy white clouds, and the house behind him has a beige exterior with a garage door. The scene is bright and sunny, creating a cheerful and playful atmosphere." \
#                 --target_prompt "A backpack rests on a lush green lawn in front of a suburban house. A bright red toy airplane stands on the grass nearby, facing forward but angled slightly to the right. Its surface is smooth and glossy, with subtle highlights that reflect the sunny sky. The backpack has a black body with bwhitelack straps and a zipper partially open at the top, giving it a realistic and grounded appearance. The background features a clear blue sky with fluffy white clouds, and the house behind has a beige exterior with a garage door. The scene is bright and sunny, maintaining the cheerful atmosphere while introducing a sense of quiet stillness." \
#                 --guidance 2 \
#                 --source_img_dir '../examples/source/boy.png' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/boy' \
#                 --controlnet_type 'multi' \
                # --vis_path '../examples/edit-map-visualization/dog'



python ../edit.py  --source_prompt "A young boy is sitting on a lush green lawn in front of a suburban house, playing with a bright red toy airplane. The boy is wearing overalls and a plaid shirt, and he has a joyful expression as he holds the toy plane in his hands. The background features a clear blue sky with fluffy white clouds, and the house behind him has a beige exterior with a garage door. The scene is bright and sunny, creating a cheerful and playful atmosphere." \
                --target_prompt "A fluffy cat is laying on a lush green lawn in front of a suburban house, playing with a bright red toy airplane. The cat has soft, striped fur in shades of orange and white, giving it a playful and endearing appearance. The cat is positioned as if it were playing with the toy plane, with its arms extended to mimic the action of flying the plane. The background features a clear blue sky with fluffy white clouds, and the house behind it has a beige exterior with a garage door. The scene is bright and sunny, maintaining the cheerful and playful atmosphere while introducing a sense of quiet exploration." \
                --guidance 2.5 \
                --source_img_dir '../examples/source/boy.png' \
                --num_steps 15 --offload \
                --inject 3 \
                --name 'flux-dev'  \
                --output_dir '../examples/edit-result/boy' \
                --controlnet_type 'multi' \
                --vis_path '../examples/edit-map-visualization/dog'
                
# CN 0.1-0.7 scale 1.4 multi FP=2


# python ../edit.py  --source_prompt "A young boy is sitting on a lush green lawn in front of a suburban house, playing with a bright red toy airplane. The boy is wearing overalls and a plaid shirt, and he has a joyful expression as he holds the toy plane in his hands. The background features a clear blue sky with fluffy white clouds, and the house behind him has a beige exterior with a garage door. The scene is bright and sunny, creating a cheerful and playful atmosphere." \
#                 --target_prompt "A soccer ball is LYING on a lush green lawn in front of a suburban house, playing with a bright red toy airplane. The background features a clear blue sky with fluffy white clouds, and the house behind it has a beige exterior with a garage door. The scene is bright and sunny, creating a cheerful and playful atmosphere." \
#                 --guidance 2.5 \
#                 --source_img_dir '../examples/source/boy.png' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/boy' \
#                 --controlnet_type 'multi' \
#                 --vis_path '../examples/edit-map-visualization/dog'


# CN 0.1-0.9 scale 2.8 multi FP 1



# python ../edit.py  --source_prompt "A young boy is sitting on a horse in an open field, wearing a cowboy hat and plaid shirt. The horse is brown with a white blaze on its face, and the background features a serene countryside setting with lush green trees and soft lighting." \
#                 --target_prompt "A fluffy cat is perched comfortably on the back of a horse in an open field. The cat has soft, striped fur in shades of orange and white, giving it a playful and endearing appearance. Its posture is relaxed, with its front paws stretched out as if exploring or resting. The horse is brown with a white blaze on its face, and the background features a serene countryside setting with lush green trees and soft lighting." \
#                 --guidance 2.5 \
#                 --source_img_dir '../examples/source/horse.png' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/horse' \
#                 --controlnet_type 'none' \
#                 --vis_path '../examples/edit-map-visualization/horse'



# python ../edit.py  --source_prompt "A young boy is sitting on a horse in an open field, wearing a cowboy hat and plaid shirt. The horse is brown with a white blaze on its face, and the background features a serene countryside setting with lush green trees and soft lighting." \
#                 --target_prompt "A bunch of colorful balloons floats gently on the back of a horse in an open field. The balloons are tied together with strings, featuring vibrant hues of pink, blue, and yellow that catch the sunlight beautifully. They are positioned near where the boy would have been sitting, as if left behind during a celebration. The horse is brown with a white blaze on its face, and the background features a serene countryside setting with lush green trees and soft lighting. The scene maintains a cheerful and playful atmosphere, with the horse standing calmly in the field." \
#                 --guidance 1.5 \
#                 --source_img_dir '../examples/source/horse.png' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/horse' \
#                 --controlnet_type 'none' \
#                 --vis_path '../examples/edit-map-visualization/horse'



# python ../edit.py  --source_prompt "A young boy is sitting on a horse in an open field, wearing a cowboy hat and plaid shirt. The horse is brown with a white blaze on its face, and the background features a serene countryside setting with lush green trees and soft lighting." \
#                 --target_prompt "A sturdy backpack rests securely on the back of a horse in an open field. The backpack has a rugged design with dark straps and a slightly worn texture, giving it a practical and adventurous appearance. The horse is brown with a white blaze on its face, and the background features a serene countryside setting with lush green trees and soft lighting. The scene maintains a peaceful and natural atmosphere, with the horse standing calmly in the field." \
#                 --guidance 2 \
#                 --source_img_dir '../examples/source/horse.png' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/horse' \
#                 --controlnet_type 'single' \
#                 --vis_path '../examples/edit-map-visualization/horse'


# python ../edit.py  --source_prompt "A young boy is sitting on a horse in an open field, wearing a cowboy hat and plaid shirt. The horse is brown with a white blaze on its face, and the background features a serene countryside setting with lush green trees and soft lighting." \
#                 --target_prompt "A plush teddy bear is sitting on a horse in an open field. The bear has soft, brown fur and button eyes, giving it a nostalgic and friendly appearance. The horse is brown with a white blaze on its face, and the background features a serene countryside setting with lush green trees and soft lighting. The scene maintains a peaceful and natural atmosphere, with the horse standing calmly in the field." \
#                 --guidance 2 \
#                 --source_img_dir '../examples/source/horse.png' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/horse' \
#                 --controlnet_type 'none' \
#                 --vis_path '../examples/edit-map-visualization/horse'