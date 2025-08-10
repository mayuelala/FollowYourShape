# python edit.py  --source_prompt "A woman hiking on a trail with mountains in the distance, carrying a backpack." \
#                 --target_prompt "A woman hiking on a trail with mountains in the distance, carrying a backpack and holding a hiking stick." \
#                 --guidance 2 \
#                 --source_img_dir 'examples/source/hiking.jpg' \
#                 --num_steps 15  \
#                 --inject 4 --offload \
#                 --name 'flux-dev'  \
#                 --output_dir 'examples/edit-result/hiking/' 


python edit.py  --source_prompt "A woman hiking on a trail with mountains in the distance, carrying a backpack." \
                --target_prompt "A woman hiking on a trail with mountains in the distance, carrying a backpack and holding a cute cat." \
                --guidance 2 \
                --source_img_dir 'examples/source/hiking.jpg' \
                --num_steps 15  \
                --inject 5 --offload \
                --name 'flux-dev'  \
                --output_dir 'examples/edit-result/hiking/' 