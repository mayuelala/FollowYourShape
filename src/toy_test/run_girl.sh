python ../edit.py  --source_prompt "A girl and her dog in the field" \
                --target_prompt "A girl and her monkey in the field" \
                --guidance 10 \
                --source_img_dir '../examples/source/girl.jpg' \
                --num_steps 15 --offload \
                --inject 3 \
                --name 'flux-dev'  \
                --output_dir '../examples/edit-result/girl' \
                --controlnet_type 'single' \
                --vis_path '../examples/edit-map-visualization/girl'