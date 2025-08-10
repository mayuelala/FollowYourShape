python ../edit.py  --source_prompt "An old man sits on a green park bench. There's a piegon perched on his right knee. There is a white dog sitting besides him." \
                --target_prompt "An old man sits on a green park bench. There's a piegon perched on his tight knee. There is a small turtle sitting besides him." \
                --guidance 1.5 \
                --source_img_dir '../examples/source/old_man.jpg' \
                --num_steps 15  \
                --inject 3 \
                --name 'flux-dev'  \
                --output_dir '../examples/edit-result/old_man/' \
                --controlnet_type 'single' \
                --vis_path '../examples/edit-map-visualization/old_man/'