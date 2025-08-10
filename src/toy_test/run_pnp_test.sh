#  python ../edit.py  --source_prompt "a round shape cake with orange frosting on a wooden plate" \
#                 --target_prompt "a star shape cake with orange frosting on a wooden plate. Change the shape of the cake from round to star" \
#                 --guidance 3 \
#                 --source_img_dir '../../data/1_change_object_80/1_artificial/3_indoor/113000000003.jpg' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/pnp_test' \
#                 --controlnet_type 'single' \
#                 --vis_path '../examples/edit-map-visualization/pnp_test'


# python ../edit.py  --source_prompt "A perfectly round honey cake with smooth white cream swirled neatly on top and fine golden crumbs pressed along its sides. The cake sits on a rustic wooden slice stand, evoking a natural, cozy atmosphere. In the softly lit background, there are a few warm-toned decorative elements like a ceramic vase with eucalyptus, a green mug, and a bowl of crumbs, all contributing to a homely, handcrafted aesthetic." \
#                 --target_prompt "A heart-shaped honey cake with the same delicate white cream swirled on top and golden crumbs along its curved edges and pointed base. Replacing the original round shape, the cake now forms a romantic and distinctive silhouette. It still sits atop the rustic wooden cake stand, with the warm, softly lit background—featuring the same ceramic vase, green mug, and handcrafted details—preserved to maintain the cozy, inviting atmosphere." \
#                 --guidance 2 \
#                 --source_img_dir '../examples/source/cake.jpg' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/pnp_test' \
#                 --controlnet_type 'multi' \
#                 --vis_path '../examples/edit-map-visualization/pnp_test'


# python ../edit.py  --source_prompt "A cozy, two-story wooden cabin is nestled in a dense forest at night. The cabin is illuminated by warm, glowing lights from its windows, creating a welcoming and inviting atmosphere. The structure has a rustic design with exposed wood beams and a steeply pitched roof covered in moss and vines, giving it an organic, integrated look with the surrounding nature. A set of stone steps leads up to the front door, which is slightly ajar, hinting at mystery or intrigue. The forest around the cabin is dark and lush, with tall trees looming in the background, their branches reaching out as if guarding the house. Two figures stand near the entrance, one closer to the viewer and another further back, adding a sense of scale and depth to the scene. The overall mood is mysterious and enchanting, blending warmth and coziness with the eerie beauty of the forest." \
#                 --target_prompt "A colossal, otherworldly monster dominates the dense forest at night. The creature is unlike any known form, with a body that appears to be entirely metallic and mechanical, giving it a cold, industrial look. Its shape is angular and rigid, with sharp spikes protruding from its head and back, resembling jagged blades or armor plates. The monster's surface is textured with intricate patterns that resemble gears and circuitry, casting eerie shadows on the ground and creating an unsettling contrast against the dark forest backdrop. A central opening in the monster's form emits a pulsating glow, resembling eyes or a mouth, adding to the sense of danger and mystery. The forest around the monster is dark and lush, with tall trees looming in the background, their branches reaching out as if reacting to the presence of the creature. Two figures stand near the base of the monster, one closer to the viewer and another further back, emphasizing the scale and imposing presence of the creature. The overall mood is eerie and captivating, blending the chilling atmosphere of the forest with the monstrous, alien presence." \
#                 --guidance 2.5 \
#                 --source_img_dir '../examples/source/house.jpg' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/pnp_test' \
#                 --controlnet_type 'multi' \
#                 --vis_path '../examples/edit-map-visualization/pnp_test'



# python ../edit.py  --source_prompt "An iconic torch is being raised high in the air by the Statue of Liberty. The handle of the torch is sturdy and metallic, supporting the flame at the top, which is bright and radiant, contrasting sharply against the clear blue sky. The statue's head is adorned with a crown featuring seven spikes, representing the seven seas and continents. The lighting highlights the green patina of the copper surface, giving the statue a timeless and majestic appearance." \
#                 --target_prompt "A breathtaking bouquet is being held high in the air by the Statue of Liberty. The handle consists of an intricate bundle of intertwined tree branches, their natural curves supporting the lush cluster of flowers above. The bouquet features a harmonious blend of roses, hydrangeas, and lilies, each flower meticulously chosen to create a stunning visual spectacle. The roses are a mix of soft pink and deep red hues, their petals layered delicately like silk. The hydrangeas add lush clusters of purple and white blossoms, while the lilies stand tall with pristine white petals that seem to glow under the sunlight. The background remains a clear blue sky, which serves as a perfect canvas for the vivid colors of the flowers. The statue's head is still adorned with a crown featuring seven spikes, representing the seven seas and continents. The lighting highlights not only the green patina of the copper surface but also the delicate textures and colors of the flowers and the wooden branches, creating a mesmerizing contrast between the timeless statue and the ephemeral beauty of nature." \
#                 --guidance 1.7 \
#                 --source_img_dir '../examples/source/liberty.jpg' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/pnp_test' \
#                 --controlnet_type 'multi' \
#                 --vis_path '../examples/edit-map-visualization/pnp_test'



# python ../edit.py  --source_prompt "An iconic torch is being raised high in the air by the Statue of Liberty. The handle of the torch is sturdy and metallic, supporting the flame at the top, which is bright and radiant, contrasting sharply against the clear blue sky. The statue's head is adorned with a crown featuring seven spikes, representing the seven seas and continents. The lighting highlights the green patina of the copper surface, giving the statue a timeless and majestic appearance." \
#                 --target_prompt "A giant ice cream cone is being held high in the air by the Statue of Liberty. The waffle cone is textured with a crisp golden-brown pattern, its surface catching the sunlight with subtle highlights. Atop the cone sits a generous swirl of creamy vanilla ice cream, its smooth curves topped with colorful sprinkles and a bright red cherry. The soft texture of the ice cream contrasts playfully with the sturdy cone and the statue's solid form. The background remains a clear blue sky, providing a perfect backdrop for the whimsical scene. The statue's head is still adorned with a crown featuring seven spikes, representing the seven seas and continents. The lighting highlights not only the green patina of the copper surface but also the intricate details of the cone and the creamy texture of the ice cream, creating a striking contrast between the timeless statue and the playful symbol of summer." \
#                 --guidance 1.7 \
#                 --source_img_dir '../examples/source/liberty.jpg' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/pnp_test' \
#                 --controlnet_type 'multi' \
#                 --vis_path '../examples/edit-map-visualization/pnp_test'




# python ../edit.py  --source_prompt "A fluffy tabby cat lounging on a wooden chair beside a dining table, with its front paws draped over the edge, its long striped tail hanging down, and soft light coming from the background." \
#                 --target_prompt "A golden retriever puppy lounging on a wooden chair beside a dining table, with its front paws draped over the edge, its fluffy golden tail hanging down, and soft light coming from the background." \
#                 --guidance 2.0 \
#                 --source_img_dir '../examples/source/cat.jpg' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/pnp_test' \
#                 --controlnet_type 'multi' \
#                 --vis_path '../examples/edit-map-visualization/pnp_test' \
#                 --mask_path '../examples/mask/cat.png'



python ../edit.py  --source_prompt "A fluffy tabby cat lounging on a wooden chair beside a dining table, with its front paws draped over the edge, its long striped tail hanging down, and soft light coming from the background." \
                --target_prompt "A fluffy rabbit sitting on a wooden chair beside a dining table, with its soft ears slightly tilted and its round body resting comfortably on the seat. Soft light is coming from the background." \
                --guidance 2.0 \
                --source_img_dir '../examples/source/cat.jpg' \
                --num_steps 15 --offload \
                --inject 3 \
                --name 'flux-dev'  \
                --output_dir '../examples/edit-result/pnp_test' \
                --controlnet_type 'none' \
                --vis_path '../examples/edit-map-visualization/pnp_test' \
                --mask_path '../examples/mask/cat.png'




# python ../edit.py  --source_prompt "Two small birds perched on a mossy tree branch, facing each other, with a blurred background of green leaves and purple flowers." \
#                 --target_prompt "Two small dragonflies resting on top of a mossy tree branch, positioned close to each other, with a blurred background of green leaves and purple flowers." \
#                 --guidance 2.5 \
#                 --source_img_dir '../examples/source/bird.jpg' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/pnp_test' \
#                 --controlnet_type 'none' \
#                 --vis_path '../examples/edit-map-visualization/pnp_test'


# python ../edit.py  --source_prompt "Two small birds perched on a mossy tree branch, facing each other. The birds have soft, fluffy feathers in shades of brown and white, giving them a natural and endearing appearance. Their posture is balanced and symmetrical, with one bird slightly leaning forward as if interacting with the other. The background features a blurred scene of green leaves and vibrant purple flowers, creating a serene and harmonious atmosphere." \
#                 --target_prompt "Two miniature robots perched on a mossy tree branch, facing each other. The robots have sleek, metallic bodies with a modern, angular design, giving them a futuristic appearance. Their structure includes glowing panels and articulated joints, allowing them to maintain a balanced and symmetrical pose similar to the original birds. The robots' surfaces reflect light softly, enhancing their high-tech aesthetic. The background features a blurred scene of green leaves and vibrant purple flowers, creating a serene and harmonious atmosphere." \
#                 --guidance 2 \
#                 --source_img_dir '../examples/source/bird.jpg' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/pnp_test' \
#                 --controlnet_type 'single' \
#                 --vis_path '../examples/edit-map-visualization/pnp_test'


# python ../edit.py  --source_prompt "Two small birds perched on a mossy tree branch, facing each other. The birds have soft, fluffy feathers in shades of brown and white, giving them a natural and endearing appearance. Their posture is balanced and symmetrical, with one bird slightly leaning forward as if interacting with the other. The background features a blurred scene of green leaves and vibrant purple flowers, creating a serene and harmonious atmosphere." \
#                 --target_prompt "Two baseball caps are resting side by side on a mossy tree branch, positioned to face each other. One cap is primarily red with a subtle logo on the front, while the other is blue with a contrasting pattern, creating a balanced and visually appealing composition. The caps have a classic design with curved brims and structured crowns, giving them a clean and recognizable appearance. They are placed naturally on the branch, with slight tilts that suggest a casual arrangement rather than intentional posing. The background features a blurred scene of green leaves and vibrant purple flowers, maintaining the peaceful and natural atmosphere. Soft, warm lighting enhances the textures and colors of the fabric, blending the caps seamlessly into the serene jungle setting." \
#                 --guidance 2 \
#                 --source_img_dir '../examples/source/bird.jpg' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/pnp_test' \
#                 --controlnet_type 'single' \
#                 --vis_path '../examples/edit-map-visualization/pnp_test'



# python ../edit.py  --source_prompt "Two small birds perched on a mossy tree branch, facing each other. The birds have soft, fluffy feathers in shades of brown and white, giving them a natural and endearing appearance. Their posture is balanced and symmetrical, with one bird slightly leaning forward as if interacting with the other. The background features a blurred scene of green leaves and vibrant purple flowers, creating a serene and harmonious atmosphere." \
#                 --target_prompt "Two playing cards are resting side by side on a mossy tree branch, positioned to face each other. Each card has a classic poker design — one showing the King of Hearts and the other the Queen of Spades — with bold colors and intricate details visible even in the soft lighting. The cards lean slightly forward, and are supported by thin wooden props that help them stay upright. The background features a blurred scene of green leaves and vibrant purple flowers, maintaining the peaceful and harmonious atmosphere." \
#                 --guidance 3 \
#                 --source_img_dir '../examples/source/bird.jpg' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/pnp_test' \
#                 --controlnet_type 'single' \
#                 --vis_path '../examples/edit-map-visualization/pnp_test'





# python ../edit.py  --source_prompt "A black and red mountain bike is placed on a concrete surface, with its front wheel slightly over the edge of a white line painted on the ground. The bike has thick, rugged tires suitable for off-road terrain. It features a sturdy frame with a sleek design, equipped with front and rear disc brakes for better control. The handlebars are equipped with grips and brake levers, and the seat is positioned at a comfortable height. The background shows a beige building with a simple facade. To the left of the bike, there is a white garage door or roll-up door, which appears to be closed. The door has a small rectangular window near the top, likely for ventilation or light. A set of horizontal iron railings is visible nearby, adding to the industrial feel of the setting. The overall scene is well-lit, suggesting it's daytime." \
#                 --target_prompt "A rusty old bicycle is placed on a concrete surface, with its front wheel slightly over the edge of a white line painted on the ground. The bike shows signs of wear and tear, with patches of rust covering its frame, wheels, and components. The once-black paint is now chipped and flaking, revealing the underlying metal beneath. The tires appear worn but still intact, suitable for basic use. The frame, though sturdy, has visible scratches and dents, adding to its weathered appearance. The handlebars are equipped with worn grips and brake levers, and the seat is slightly sagging, indicating age and use. The background shows a beige building with a simple facade and a set of horizontal iron railings nearby. The overall scene is well-lit, suggesting it's daytime." \
#                 --guidance 1.5 \
#                 --source_img_dir '../examples/source/bike.jpg' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/pnp_test' \
#                 --controlnet_type 'single' \
#                 --vis_path '../examples/edit-map-visualization/pnp_test'


# python ../edit.py  --source_prompt "A black and red mountain bike is placed on a concrete surface, with its front wheel slightly over the edge of a white line painted on the ground. The bike has thick, rugged tires suitable for off-road terrain. It features a sturdy frame with a sleek design, equipped with front and rear disc brakes for better control. The handlebars are equipped with grips and brake levers, and the seat is positioned at a comfortable height. The background shows a beige building with a simple facade. To the left of the bike, there is a white garage door or roll-up door, which appears to be closed. The door has a small rectangular window near the top, likely for ventilation or light. A set of horizontal iron railings is visible nearby, adding to the industrial feel of the setting. The overall scene is well-lit, suggesting it's daytime." \
#                 --target_prompt "A wooden storage box is placed on the white line of concrete surface under natural daylight. The box is made of aged wood with visible grain textures and a rustic finish. It features a hinged lid with an iron handle for easy opening, and a simple metal latch to keep it securely closed. The box sits alone in a minimalistic outdoor setting, with a plain beige building visible in the background. The lighting is soft and even, highlighting the wooden details and surrounding environment." \
#                 --guidance 2.5 \
#                 --source_img_dir '../examples/source/bike.jpg' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/pnp_test' \
#                 --controlnet_type 'multi' \
#                 --vis_path '../examples/edit-map-visualization/pnp_test'



# python ../edit.py  --source_prompt "A small, adorable kitten with a black and white coat is standing on a paved surface made of stone tiles. The kitten has a curious expression, with its eyes wide open and ears perked up. It is gently touching a tiny purple flower with one paw, showing a sense of exploration and playfulness. The background is softly blurred, featuring a calm body of water, which adds a serene and peaceful atmosphere to the scene. The lighting is soft and natural, suggesting it might be early morning or late afternoon." \
#                 --target_prompt "A small, adorable frog with a green skin is standing upright on a paved surface made of stone tiles. The frog has a curious expression, with its eyes wide open and body in a relaxed, natural stance. It is gently touching a tiny purple flower with one of its front limbs, showing a sense of exploration and playfulness. The background is softly blurred, featuring a calm body of water, which adds a serene and peaceful atmosphere to the scene. The lighting is soft and natural, suggesting it might be early morning or late afternoon." \
#                 --guidance 2.5 \
#                 --source_img_dir '../examples/source/kitten.jpg' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/pnp_test' \
#                 --controlnet_type 'single' \
#                 --vis_path '../examples/edit-map-visualization/pnp_test'


# python ../edit.py  --source_prompt "A cute black pug puppy is sitting on a grassy field, holding a bright red heart in its front paws. The puppy has large, expressive eyes and a soft, fluffy coat with white markings on its chest and face. The background features a blurred natural setting with green grass, trees, and a soft, warm light that gives the scene a cozy and charming atmosphere." \
#                 --target_prompt "A cute black pug puppy is sitting on a grassy field, holding a crumpled pink origami star in its front paws. The star has sharp, angular folds and creases, giving it a textured and three-dimensional appearance. The puppy has large, expressive eyes and a soft, fluffy coat with white markings on its chest and face. The background features a blurred natural setting with green grass, trees, and a soft, warm light that gives the scene a cozy and charming atmosphere." \
#                 --guidance 2.5 \
#                 --source_img_dir '../examples/source/puppy.jpg' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/pnp_test' \
#                 --controlnet_type 'single' \
#                 --vis_path '../examples/edit-map-visualization/pnp_test'



# python ../edit.py  --source_prompt "A cup of latte is placed on a wooden table, with intricate latte art in the form of delicate leaves and swirls. The coffee has a rich, creamy texture, and the milk foam creates a beautiful contrast against the darker coffee base. The cup is white, sitting on a matching saucer, and the background features warm, natural lighting that highlights the cozy and inviting atmosphere of the scene." \
#                 --target_prompt "A cup of latte is placed on a wooden table, with intricate latte art in the form of a majestic lion's face. The coffee has a rich, creamy texture, and the milk foam is carefully crafted to create the outline and details of a lion, including its mane, eyes, nose, and mouth. The cup is white, sitting on a matching saucer, and the background features warm, natural lighting that highlights the cozy and inviting atmosphere of the scene." \
#                 --guidance 1.5 \
#                 --source_img_dir '../examples/source/coffee.jpg' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/pnp_test' \
#                 --controlnet_type 'single' \
#                 --vis_path '../examples/edit-map-visualization/pnp_test'\

# python ../edit.py  --source_prompt "A cup of latte is placed on a wooden table, with intricate latte art in the form of delicate leaves and swirls. The coffee has a rich, creamy texture, and the milk foam creates a beautiful contrast against the darker coffee base. The cup is white, sitting on a matching saucer, and the background features warm, natural lighting that highlights the cozy and inviting atmosphere of the scene." \
#                 --target_prompt "A cup of latte is placed on a wooden table, with intricate latte art in the form of the word "LOVE" written in elegant cursive script. The coffee has a rich, creamy texture, and the milk foam creates a beautiful contrast against the darker coffee base. The letters are designed with flowing curves and delicate flourishes, making them look artistic and romantic. The cup is white, sitting on a matching saucer, and the background features warm, natural lighting that highlights the cozy and inviting atmosphere of the scene." \
#                 --guidance 1.5 \
#                 --source_img_dir '../examples/source/coffee.jpg' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/pnp_test' \
#                 --controlnet_type 'single' \
#                 --vis_path '../examples/edit-map-visualization/pnp_test'


# python ../edit.py  --source_prompt "A fluffy Shiba Inu dog is lying on a plain white background. The dog has a light brown and white coat with distinctive markings, including a white face and chest. Its ears are pointed and alert, and its eyes are bright and expressive. The dog's tongue is hanging out, giving it a playful and friendly appearance. The overall scene is simple and clean, with the focus entirely on the dog." \
#                 --target_prompt "A majestic lion cub is lying on a plain white background. The cub has a soft, golden-brown coat with subtle darker markings around its face and ears. Its ears are perked up, and its eyes are bright and curious, exuding a sense of playfulness and innocence. The cub's mouth is slightly open, revealing small teeth, which adds to its adorable expression. The overall scene is simple and clean, with the focus entirely on the lion cub." \
#                 --guidance 2.5 \
#                 --source_img_dir '../examples/source/shiba.jpg' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/pnp_test' \
#                 --controlnet_type 'single' \
#                 --vis_path '../examples/edit-map-visualization/pnp_test'\


# python ../edit.py  --source_prompt "A fluffy Shiba Inu dog is lying on a plain white background. The dog has a light brown and white coat with distinctive markings, including a white face and chest. Its ears are pointed and alert, and its eyes are bright and expressive. The dog's tongue is hanging out, giving it a playful and friendly appearance. The overall scene is simple and clean, with the focus entirely on the dog." \
#                 --target_prompt "A fluffy black rabbit is lying on a plain white background. The rabbit has soft, velvety black fur that contrasts sharply against the white backdrop. Its ears are perked up, and its eyes are bright and expressive, exuding a sense of curiosity and playfulness. The rabbit's mouth is slightly open, revealing small teeth, which adds to its adorable expression. The overall scene is simple and clean, with the focus entirely on the rabbit." \
#                 --guidance 2.5 \
#                 --source_img_dir '../examples/source/shiba.jpg' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/pnp_test' \
#                 --controlnet_type 'single' \
#                 --vis_path '../examples/edit-map-visualization/pnp_test'\




# python ../edit.py  --source_prompt "A Rottweiler dog sitting behind a marble countertop with a bag of The Honest Kitchen dog food placed beside it. The bag is labeled with 'the honest kitchen' at the top in white text on a red background, followed by 'GRAIN FREE BEEF RECIPE' in large orange letters, and 'TASTY WHOLE FOOD CLUSTERS' in smaller black letters below. There is an image of a white dog illustration on the bag, a circular window showing the food inside, and additional text reading 'HUMAN GRADE FOOD FOR DOGS' and 'MADE HONEST'. On the countertop, there is a white bowl filled with dry dog food, and next to it, a cutting board with carrots, apple slices, and broccoli. The background is a solid beige color." \
#                 --target_prompt "A small penguin sitting behind a marble countertop with a bag of The Honest Kitchen dog food placed beside it. The bag is labeled with 'the honest kitchen' at the top in white text on a red background, followed by 'GRAIN FREE BEEF RECIPE' in large orange letters, and 'TASTY WHOLE FOOD CLUSTERS' in smaller black letters below. There is an image of a white dog illustration on the bag, a circular window showing the food inside, and additional text reading 'HUMAN GRADE FOOD FOR DOGS' and 'MADE HONEST'. On the countertop, there is a white bowl filled with dry dog food, and next to it, a cutting board with carrots, apple slices, and broccoli. The background is a solid beige color." \
#                 --guidance 2 \
#                 --source_img_dir '../examples/source/rottweiler.jpg' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/pnp_test' \
#                 --controlnet_type 'none' \
#                 --vis_path '../examples/edit-map-visualization/pnp_test'\



# python ../edit.py  --source_prompt "A vibrant red squirrel is perched on a patch of green foliage, with its fluffy tail fluffed up and bushy. The squirrel has rich, reddish-brown fur with a white underbelly, giving it a striking contrast against the bright green background. Its large, expressive eyes are focused intently, and its small paws are slightly raised, as if it's about to move or interact with something. The lighting is soft and natural, highlighting the texture of the squirrel's fur and the lush greenery around it." \
#                 --target_prompt "A sleek, modern camera is lying horizontally on a patch of green foliage, with its body resting flat against the ground. The camera has a compact design with a matte black finish, featuring a prominent lens at one end and a control panel on top. Its details include silver accents around the lens and buttons, adding a touch of sophistication. The camera appears to be positioned deliberately, as if someone had placed it there for a specific purpose. The lighting is soft and natural, highlighting the smooth texture of the camera's surface and the lush greenery around it. " \
#                 --guidance 1.5 \
#                 --source_img_dir '../examples/source/squirrel.png' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/pnp_test' \
#                 --controlnet_type 'single' \
#                 --vis_path '../examples/edit-map-visualization/pnp_test'\


# python ../edit.py  --source_prompt "A vibrant macaw perches gracefully on a tree branch in a lush, tropical jungle. The bird's plumage is a stunning mix of bright red, blue, and green feathers, with intricate patterns that catch the light beautifully. Its sharp beak is slightly open, revealing its keen expression as it surveys its surroundings. The background features a serene waterfall cascading into a tranquil pool, surrounded by dense foliage and colorful flowers. The lighting is soft and warm, highlighting the rich colors of the parrot and the verdant environment, creating a peaceful and enchanting atmosphere." \
#                 --target_prompt "A brown hat rests gently on a tree branch in a lush, tropical jungle. The hat has a soft, textured surface with a classic design, featuring a wide brim and a small band around the base. Its color blends harmoniously with the surrounding environment, giving it a natural and unobtrusive appearance. The hat appears to have been placed deliberately, as if someone had set it there for a specific purpose. The background features a serene waterfall cascading into a tranquil pool, surrounded by dense foliage and colorful flowers. The lighting is soft and warm, highlighting the rich textures of the hat and the verdant environment, creating a peaceful and enchanting atmosphere." \
#                 --guidance 2 \
#                 --source_img_dir '../examples/source/parrot.png' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/pnp_test' \
#                 --controlnet_type 'none' \
#                 --vis_path '../examples/edit-map-visualization/pnp_test'\
                # --mask_path '../examples/mask/parrot_box.png' \

# CN single / multi 0.1-0.5 scale 0.4 FP=2



# python ../edit.py  --source_prompt "A vibrant macaw perches gracefully on a branch in a lush, tropical jungle. The bird's plumage is a stunning mix of bright red, blue, and green feathers, with intricate patterns that catch the light beautifully. Its sharp beak is slightly open, revealing its keen expression as it surveys its surroundings. The background features a serene waterfall cascading into a tranquil pool, surrounded by dense foliage and colorful flowers. The lighting is soft and warm, highlighting the rich colors of the parrot and the verdant environment, creating a peaceful and enchanting atmosphere." \
#                 --target_prompt "Four large, bold uppercase letters spelling out [LOVE] are individually placed on a branch in a lush, tropical jungle. Each letter stands independently, with a subtle, organic structure beneath it that connects it securely to the branch, giving the impression that they are naturally integrated into the scene. The letters are crafted from a glowing material, radiating a warm, golden hue that contrasts beautifully against the greenery. The background features a serene waterfall cascading into a tranquil pool, surrounded by dense foliage and colorful flowers. The lighting is soft and warm, highlighting the radiant glow of the letters and the verdant environment, creating a peaceful and enchanting atmosphere." \
#                 --guidance 2 \
#                 --source_img_dir '../examples/source/parrot.png' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/pnp_test' \
#                 --controlnet_type 'none' \
#                 --vis_path '../examples/edit-map-visualization/pnp_test'\



# python ../edit.py  --source_prompt "A vibrant macaw perches gracefully on a branch in a lush, tropical jungle. The bird's plumage is a stunning mix of bright red, blue, and green feathers, with intricate patterns that catch the light beautifully. Its sharp beak is slightly open, revealing its keen expression as it surveys its surroundings. The background features a serene waterfall cascading into a tranquil pool, surrounded by dense foliage and colorful flowers. The lighting is soft and warm, highlighting the rich colors of the parrot and the verdant environment, creating a peaceful and enchanting atmosphere." \
#                 --target_prompt "A freshly cracked coconut rests on a branch in a lush, tropical jungle. The coconut has been carefully split open, revealing its creamy white interior and a small pool of refreshing coconut water at the bottom. The outer shell is rugged and textured, with remnants of the husk still clinging to some parts, giving it a natural and rustic appearance. The inner flesh of the coconut is moist and inviting, with a few strands of fiber visible, adding to its authenticity. The background features a serene waterfall cascading into a tranquil pool, surrounded by dense foliage and colorful flowers. The lighting is soft and warm, highlighting the textures of the coconut and the verdant environment, creating a peaceful and enchanting atmosphere." \
#                 --guidance 2 \
#                 --source_img_dir '../examples/source/parrot.png' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/pnp_test' \
#                 --controlnet_type 'single' \
#                 --vis_path '../examples/edit-map-visualization/pnp_test'\


# python ../edit.py  --source_prompt "A vibrant macaw perches gracefully on a branch in a lush, tropical jungle. The bird's plumage is a stunning mix of bright red, blue, and green feathers, with intricate patterns that catch the light beautifully. Its sharp beak is slightly open, revealing its keen expression as it surveys its surroundings. The background features a serene waterfall cascading into a tranquil pool, surrounded by dense foliage and colorful flowers. The lighting is soft and warm, highlighting the rich colors of the parrot and the verdant environment, creating a peaceful and enchanting atmosphere." \
#                 --target_prompt "A realistic wild rabbit lies stretched out across a branch in a lush, tropical jungle. The rabbit has short, dense fur in earthy tones of brown and gray, blending subtly into the forest setting. Its long ears are partially folded back, and its eyes are half-closed, giving it a calm but grounded presence — not cute, just resting in the moment. The rabbit appears to be dozing or observing its surroundings from above, lying horizontally across the branch with all four paws tucked beneath its body for balance. The background features a serene waterfall cascading into a tranquil pool, surrounded by dense foliage and colorful flowers. The lighting is soft and warm, highlighting the subtle textures of the rabbit’s fur and the verdant environment, maintaining the peaceful and immersive jungle atmosphere." \
#                 --guidance 1.5 \
#                 --source_img_dir '../examples/source/parrot.png' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/pnp_test' \
#                 --controlnet_type 'none' \
#                 --vis_path '../examples/edit-map-visualization/pnp_test'\


# python ../edit.py  --source_prompt "A vibrant macaw perches gracefully on a tree branch in a lush, tropical jungle. The bird's plumage is a stunning mix of bright red, blue, and green feathers, with intricate patterns that catch the light beautifully. Its sharp beak is slightly open, revealing its keen expression as it surveys its surroundings. The background features a serene waterfall cascading into a tranquil pool, surrounded by dense foliage and colorful flowers. The lighting is soft and warm, highlighting the rich colors of the parrot and the verdant environment, creating a peaceful and enchanting atmosphere." \
#                 --target_prompt "A vintage acoustic guitar stands securely on a wooden tripod, placed atop a tree branch in a lush, tropical jungle. The guitar has a weathered body with smooth curves and faded strings, giving it a nostalgic and lived-in appearance. The tripod is handcrafted from natural wood, blending seamlessly with the surrounding environment. It supports the guitar upright, as if set up for an unseen performer. The round soundhole faces outward, catching the dappled sunlight filtering through the canopy. The background features a serene waterfall cascading into a tranquil pool, surrounded by dense foliage and colorful flowers. The lighting is soft and warm, maintaining the peaceful and immersive atmosphere." \
#                 --guidance 2 \
#                 --source_img_dir '../examples/source/parrot.png' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/pnp_test' \
#                 --controlnet_type 'none' \
#                 --vis_path '../examples/edit-map-visualization/pnp_test'\





# python ../edit.py  --source_prompt "A man is sitting at a wooden table in a cozy café setting. He is wearing a denim jacket over a white t-shirt and has a warm, friendly smile on his face. In his hand, he holds a white coffee cup with a black lid, suggesting he is enjoying a warm beverage. On the table in front of him, there is an open book, indicating he might be reading or studying. The background features soft, warm lighting and blurred elements like plants and furniture, creating a relaxed and inviting atmosphere." \
#                 --target_prompt "A man is sitting at a wooden table in a cozy café setting. He is wearing a denim jacket over a white t-shirt and has a warm, friendly smile on his face. In his hand, he holds a sleek smartphone with a modern design, suggesting he is engaged with it. On the table in front of him, there is an open book, indicating he might be multitasking between reading and using his phone. The background features soft, warm lighting and blurred elements like plants and furniture, creating a relaxed and inviting atmosphere." \
#                 --guidance 2.5 \
#                 --source_img_dir '../examples/source/man.png' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/pnp_test' \
#                 --controlnet_type 'single' \
#                 --vis_path '../examples/edit-map-visualization/pnp_test'


# python ../edit.py  --source_prompt "A man is sitting at a wooden table in a cozy café setting. He is wearing a denim jacket over a white t-shirt and has a warm, friendly smile on his face. In his hand, he holds a white coffee cup with a black lid, suggesting he is enjoying a warm beverage. On the table in front of him, there is an open book, indicating he might be reading or studying. The background features soft, warm lighting and blurred elements like plants and furniture, creating a relaxed and inviting atmosphere." \
#                 --target_prompt "A man is sitting at a wooden table in a cozy café setting. He is wearing a denim jacket over a white t-shirt and has a warm, thoughtful expression on his face. In his hand, he holds a sleek fountain pen with a polished metallic nib, suggesting he is either writing or contemplating something. His grip is firm but gentle, with his fingers positioned naturally around the pen's barrel, showcasing a classic writing posture. On the table in front of him, there is an open book in the corner, indicating he might be referencing it while using the pen. The background features soft, warm lighting and blurred elements like plants and furniture, creating a relaxed and inviting atmosphere." \
#                 --guidance 3 \
#                 --source_img_dir '../examples/source/man.png' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/pnp_test' \
#                 --controlnet_type 'single' \
#                 --vis_path '../examples/edit-map-visualization/pnp_test'

# python ../edit.py  --source_prompt "A man is sitting at a wooden table in a cozy café setting. He is wearing a denim jacket over a white t-shirt and has a warm, friendly smile on his face. In his hand, he holds a white coffee cup with a black lid, suggesting he is enjoying a warm beverage. On the table in front of him, there is an open book, indicating he might be reading or studying. The background features soft, warm lighting and blurred elements like plants and furniture, creating a relaxed and inviting atmosphere." \
#                 --target_prompt "A man is sitting at a wooden table in a cozy café setting. He is wearing a denim jacket over a white t-shirt and has a warm, friendly smile on his face. He is making a thumbs-up gesture with his right hand, expressing approval or satisfaction. His other hand rests naturally on the table, maintaining a relaxed posture. On the table in front of him, there is an open book, indicating he might be reading or studying. The background features soft, warm lighting and blurred elements like plants and furniture, creating a relaxed and inviting atmosphere." \
#                 --guidance 2.5 \
#                 --source_img_dir '../examples/source/man.png' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/pnp_test' \
#                 --controlnet_type 'none' \
#                 --vis_path '../examples/edit-map-visualization/pnp_test'




# python ../edit.py  --source_prompt "A man is sitting at a wooden table in a cozy café setting. He is wearing a denim jacket over a white t-shirt and has a warm, friendly smile on his face. In his hand, he holds a white coffee cup with a black lid, suggesting he is enjoying a warm beverage. On the table in front of him, there is an open book, indicating he might be reading or studying. The background features soft, warm lighting and blurred elements like plants and furniture, creating a relaxed and inviting atmosphere." \
#                 --target_prompt "A man is sitting at a wooden table in a cozy café setting. He is wearing a denim jacket over a white t-shirt and has a warm, thoughtful expression on his face. In his hand, he's holding a transparent glass crystal ball. The crystal ball is smooth and reflective, catching the soft, warm light from the surroundings and creating subtle glimmers that add to its enchanting appearance. On the table in front of him, there is an open book, indicating he might be reading or studying. The background features soft, warm lighting and blurred elements like plants and furniture, creating a relaxed and inviting atmosphere." \
#                 --guidance 2.5 \
#                 --source_img_dir '../examples/source/man.png' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/pnp_test' \
#                 --controlnet_type 'none' \
#                 --vis_path '../examples/edit-map-visualization/pnp_test'



# python ../edit.py  --source_prompt "A man is sitting at a wooden table in a cozy café setting. He is wearing a denim jacket over a white t-shirt and has a warm, friendly smile on his face. In his hand, he holds a white coffee cup with a black lid, suggesting he is enjoying a warm beverage. On the table in front of him, there is an open book, indicating he might be reading or studying. The background features soft, warm lighting and blurred elements like plants and furniture, creating a relaxed and inviting atmosphere." \
#                 --target_prompt "A man is sitting at a wooden table in a cozy café setting. He is wearing a denim jacket over a white t-shirt and has a warm, thoughtful expression on his face. In his hand, he holds a small owl-shaped trinket made of brown wood, painted with intricate details around the eyes and feathers to give it a whimsical yet refined appearance. The owl trinket's presence suggests a sense of calm observation or contemplation. On the table in front of him, there is an open book, maintaining the original composition. The background features soft, warm lighting and blurred elements like plants and furniture, creating a relaxed and inviting atmosphere." \
#                 --guidance 3 \
#                 --source_img_dir '../examples/source/man.png' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/pnp_test' \
#                 --controlnet_type 'none' \
#                 --vis_path '../examples/edit-map-visualization/pnp_test'



# python ../edit.py  --source_prompt "A sleek, vintage camera rests on a rustic wooden surface, its metallic body gleaming under soft natural light. The camera's classic design features a prominent lens and dials, evoking a sense of nostalgia for analog photography. In the background, a small potted plant with vibrant green leaves adds a touch of life and freshness to the scene, contrasting beautifully with the warm tones of the wood. The overall atmosphere is calm and inviting, blending modern aesthetics with a touch of nature." \
#                 --target_prompt "A round, modern watch rests on a rustic wooden surface, its silver-toned metal body gleaming under soft natural light. The watch features a clean, minimalist face with slim black hands and subtle hour markers, exuding a sense of timeless elegance and refined simplicity. A delicate silver strap wraps neatly around the watch, adding a touch of modern sophistication. In the background, a small potted plant with lush green leaves brings a hint of life and freshness to the scene, contrasting gently with the warm, textured wood. The overall atmosphere is calm and inviting, blending understated style with natural warmth." \
#                 --guidance 1.5 \
#                 --source_img_dir '../examples/source/camera.jpg' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/pnp_test' \
#                 --controlnet_type 'single' \
#                 --vis_path '../examples/edit-map-visualization/pnp_test'




# python ../edit.py  --source_prompt "A black bird with a bright eye ring and a light-colored beak standing on a mound of soil in a grassy field, with a blurred green background." \
#                 --target_prompt "A black bird with a bright eye ring and a light-colored beak standing on two brown eggs in a grassy field, with a blurred green background." \
#                 --guidance 2 \
#                 --source_img_dir '../../data/0_random_140/000000000050.jpg' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/pnp_test' \
#                 --controlnet_type 'single' \
#                 --vis_path '../examples/edit-map-visualization/pnp_test'\


# CN single 0.1-0.4 scale 0.5 FP=3


# python ../edit.py  --source_prompt "A black bird with a bright eye ring and a light-colored beak standing on a mound of soil in a grassy field, with a blurred green background." \
#                 --target_prompt "A black bird with a bright eye ring and a light-colored beak standing on a big watermelon in a grassy field, with a blurred green background." \
#                 --guidance 2.5 \
#                 --source_img_dir '../../data/0_random_140/000000000050.jpg' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/pnp_test' \
#                 --controlnet_type 'single' \
#                 --vis_path '../examples/edit-map-visualization/pnp_test'\



# python ../edit.py  --source_prompt "A lion wearing a suit and tie is sitting at a wooden table in an elegant office setting. The lion has a regal appearance with a majestic mane, and it is using a laptop computer on the table. A cup of coffee is placed next to the laptop, adding to the professional yet whimsical atmosphere. The background features warm lighting from a lamp and blurred elements like plants and furniture, creating a sophisticated and inviting environment." \
#                 --target_prompt "A lion wearing a suit and tie is sitting at a wooden table in an elegant office setting. The lion has a regal appearance with a majestic mane, and it is playing with a large Rubik's Cube on the table. The background features warm lighting from a lamp and blurred elements like plants and furniture, creating a sophisticated and inviting environment." \
#                 --guidance 2 \
#                 --source_img_dir '../../data/3_delete_object_80/1_artificial/1_animal/311000000002.jpg' \
#                 --num_steps 15 --offload \
#                 --inject 4 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/pnp_test' \
#                 --controlnet_type 'none' \
#                 --vis_path '../examples/edit-map-visualization/pnp_test'\
#                 --mask_path '../examples/mask/lion.png'

# CN single 0.1-0.4 scale 0.5 FP=2


# python ../edit.py  --source_prompt "A vibrant blue and white high-top sneaker is perched on a weathered tree stump, its bold design standing out against the natural surroundings. The shoe features sleek detailing, including a prominent nike logo and contrasting black accents that add depth to its modern aesthetic. The background is lush with green ivy and leafy branches, creating a textured, organic backdrop that contrasts beautifully with the clean lines of the sneaker. Sunlight filters through the foliage, casting soft shadows and highlighting the shoe’s glossy finish, making it the focal point of this serene outdoor scene." \
#                 --target_prompt "A blue and white ceramic teapot is placed on a weathered tree stump, its elegant curves standing out against the natural surroundings. The teapot features delicate detailing, including a gracefully arched spout and contrasting black accents that add depth to its classic aesthetic. The background is lush with green ivy and leafy branches, creating a textured, organic backdrop that contrasts beautifully with the smooth lines of the teapot. Sunlight filters through the foliage, casting soft shadows and highlighting the teapot’s glossy finish, making it the focal point of this serene outdoor scene." \
#                 --guidance 2 \
#                 --source_img_dir '../examples/source/shoe.jpg' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/pnp_test' \
#                 --controlnet_type 'none' \
#                 --vis_path '../examples/edit-map-visualization/pnp_test'\


# python ../edit.py  --source_prompt "A curious red squirrel is perched on the edge of a garden table, its fluffy tail curled behind it and its bright eyes fixed on a nearby flower. The squirrel's soft, reddish-brown fur and delicate paws stand out in the foreground, as it reaches inquisitively toward a cluster of vibrant pink blossoms resting in a small pot. In the background, lush green foliage creates a dense, natural backdrop, adding depth and contrast to the scene. The overall composition captures a moment of quiet curiosity in a peaceful garden setting." \
#                 --target_prompt "A delicate hummingbird hovers gracefully at the edge of a garden table, its iridescent feathers shimmering softly as it beats its wings in mid-air. The bird's slender beak and vibrant plumage stand out in the foreground, as it reaches inquisitively toward a cluster of vibrant pink blossoms resting in a small pot. In the background, lush green foliage creates a dense, natural backdrop, adding depth and contrast to the scene. The overall composition captures a fleeting moment of quiet curiosity in a peaceful garden setting." \
#                 --guidance 2 \
#                 --source_img_dir '../examples/source/squirrel.jpg' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/pnp_test' \
#                 --controlnet_type 'single' \
#                 --vis_path '../examples/edit-map-visualization/pnp_test'\



# python ../edit.py  --source_prompt "A sleek, matte-black sedan is parked on a cobblestone street, its polished surface reflecting the muted light of an urban setting. The car's sharp lines and aggressive styling give it a modern, sporty appearance, with prominent alloy wheels that add to its dynamic look. In the background, a red brick building with closed garage doors stands as a backdrop, adding a gritty, industrial feel to the scene. Streetlights and utility poles are visible in the distance, enhancing the urban atmosphere." \
#                 --target_prompt "A sleek, matte-black road bicycle is parked on a cobblestone street, its smooth surface catching the subdued glow of the urban environment. The bike's lightweight frame and aerodynamic drop handlebars lend it a refined, performance-driven design, while the narrow racing tires and precision gear system highlight its focus on speed and efficiency. In the background, a red brick building with closed roller shutter doors stands as a backdrop, adding a gritty, industrial feel to the scene. Streetlights and utility poles are visible in the distance, enhancing the urban atmosphere." \
#                 --guidance 2 \
#                 --source_img_dir '../examples/source/car.jpg' \
#                 --num_steps 15 --offload \
#                 --inject 3 \
#                 --name 'flux-dev'  \
#                 --output_dir '../examples/edit-result/pnp_test' \
#                 --controlnet_type 'multi' \
#                 --vis_path '../examples/edit-map-visualization/pnp_test'\