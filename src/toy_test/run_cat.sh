python edit.py  --source_prompt "A curious Scottish Fold cat with a blue collar sitting on a wooden counter in a modern bathroom, facing forward with round eyes, with a clear mirror reflection behind it." \
                --target_prompt "A cute pug dog with a blue scarf sitting on a wooden counter in a modern bathroom, facing forward with round eyes, with a clear mirror reflection behind it." \
                --guidance 2 \
                --source_img_dir 'examples/source/cat.jpg' \
                --num_steps 15 --offload \
                --inject 4 \
                --name 'flux-dev'  \
                --output_dir 'examples/edit-result/cat' \
                --controlnet_type 'single' \