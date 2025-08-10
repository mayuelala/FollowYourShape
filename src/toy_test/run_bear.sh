# python ../edit.py  --source_prompt "A large brown bear walking on a rocky path surrounded by large stones and a stone wall. The ground is covered with dry dirt and there are some green plants on the side." \
#                 --target_prompt "A tall brown horse walking on a rocky path surrounded by large stones and a stone wall. The ground is covered with dry dirt and there are some green plants on the side." \
#                 --guidance 3 \
#                 --source_img_dir '../examples/source/bear.jpg' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/bear' \
#                 --controlnet_type 'single' \
#                 --vis_path '../examples/edit-map-visualization/bear'


# python edit.py  --source_prompt "A large brown bear walking on the ground inside a zoo enclosure, with a stone wall in the background and some plants at the edge of the frame." \
#                 --target_prompt "Empty ground inside a zoo enclosure, with a stone wall in the background and some plants at the edge of the frame." \
#                 --guidance 2 \
#                 --source_img_dir 'examples/source/bear.jpg' \
#                 --num_steps 15 --offload \
#                 --inject 4 \
#                 --name 'flux-dev'  \
#                 --output_dir 'examples/edit-result/bear' 


# python ../edit.py  --source_prompt "A large brown bear walking on the rocky ground inside a zoo enclosure, with a stone wall in the background and some plants at the edge of the frame." \
#                 --target_prompt "A powerful dark bull with long horn walking on the rocky ground inside a zoo enclosure, with a stone wall in the background and some plants at the edge of the frame." \
#                 --guidance 2 \
#                 --source_img_dir '../examples/source/bear.jpg' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/bear' \
#                 --controlnet_type 'single' \
#                 --vis_path '../examples/edit-map-visualization/bear' \
                # --mask_path '../examples/mask/bear.png' \




