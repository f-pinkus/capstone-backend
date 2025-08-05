Recipe.delete_all

Recipe.create!([
  {
    title: "Grandma's Chocolate Chip Cookies",
    submitted_by: "Sarah J.",
    ingredients: <<~INGREDIENTS,
      - 2 1/4 cups all-purpose flour
      - 1 tsp baking soda
      - 1 tsp salt
      - 1 cup butter, softened
      - 3/4 cup granulated sugar
      - 3/4 cup brown sugar
      - 1 tsp vanilla extract
      - 2 large eggs
      - 2 cups semi-sweet chocolate chips
    INGREDIENTS
    instructions: <<~INSTRUCTIONS,
      1. Preheat oven to 375°F (190°C).
      2. Combine flour, baking soda, and salt in small bowl.
      3. Beat butter, sugars, and vanilla in a large mixer bowl.
      4. Add eggs one at a time, beating well after each.
      5. Gradually beat in flour mixture.
      6. Stir in chocolate chips.
      7. Drop by rounded tablespoon onto ungreased baking sheets.
      8. Bake for 9-11 minutes or until golden brown.
    INSTRUCTIONS
    difficulty: "medium",
    photo_url: "https://sallysbakingaddiction.com/wp-content/uploads/2013/05/classic-chocolate-chip-cookies.jpg"
  },
  {
    title: "Quick Avocado Toast",
    submitted_by: "Ben R.",
    ingredients: <<~INGREDIENTS,
      - 2 slices of whole grain bread
      - 1 ripe avocado
      - Salt and pepper to taste
      - Optional: red pepper flakes, olive oil, lemon juice
    INGREDIENTS
    instructions: <<~INSTRUCTIONS,
      1. Toast the bread slices to your liking.
      2. Mash the avocado in a bowl and season with salt and pepper.
      3. Spread avocado on toast and top with desired extras.
    INSTRUCTIONS
    difficulty: "easy",
    photo_url: "https://whatsgabycooking.com/wp-content/uploads/WGC-Avocado-Toast-copy-2.jpg"
  },
  {
    title: "Homemade Lasagna",
    submitted_by: "Marco D.",
    ingredients: <<~INGREDIENTS,
      - 1 lb ground beef
      - 1 onion, chopped
      - 2 cloves garlic, minced
      - 1 can (28 oz) crushed tomatoes
      - 2 tbsp tomato paste
      - 12 lasagna noodles
      - 15 oz ricotta cheese
      - 2 cups shredded mozzarella
      - 1/2 cup grated Parmesan
      - Salt, pepper, Italian seasoning
    INGREDIENTS
    instructions: <<~INSTRUCTIONS,
      1. Cook beef with onion and garlic until browned.
      2. Add crushed tomatoes, paste, seasoning. Simmer 30 min.
      3. Cook noodles as directed.
      4. In a baking dish, layer sauce, noodles, ricotta, and mozzarella.
      5. Repeat layers and top with Parmesan.
      6. Bake at 375°F for 45 minutes. Let rest before serving.
    INSTRUCTIONS
    difficulty: "hard",
    photo_url: "https://cdn.apartmenttherapy.info/image/upload/f_auto,q_auto:eco,c_fit,w_730,h_548/k%2FPhoto%2FRecipes%2F2019-11-How-to-Make-Easiest-Lasagna%2FHow-to-Make-Easiest-Lasagna_035_e78045-crop2"
  },
  {
    title: "One-Pot Chicken Alfredo",
    submitted_by: "Emily T.",
    ingredients: <<~INGREDIENTS,
      - 2 tbsp olive oil
      - 1 lb boneless chicken breast, sliced
      - 4 cloves garlic, minced
      - 2 cups heavy cream
      - 2 cups chicken broth
      - 8 oz fettuccine pasta
      - 1 cup grated Parmesan cheese
      - Salt and pepper to taste
    INGREDIENTS
    instructions: <<~INSTRUCTIONS,
      1. In a large skillet, heat oil and sauté chicken until golden.
      2. Add garlic, cook 1 minute.
      3. Pour in cream and broth, bring to boil.
      4. Add pasta, reduce heat, cover and cook for 15 minutes.
      5. Stir in Parmesan until melted. Season and serve.
    INSTRUCTIONS
    difficulty: "medium",
    photo_url: "https://midwestfoodieblog.com/wp-content/uploads/2023/07/chicken-alfredo-1.jpg"
  },
  {
    title: "Classic Pancakes",
    submitted_by: "Jason M.",
    ingredients: <<~INGREDIENTS,
      - 1 1/2 cups all-purpose flour
      - 3 1/2 tsp baking powder
      - 1 tsp salt
      - 1 tbsp sugar
      - 1 1/4 cups milk
      - 1 egg
      - 3 tbsp melted butter
    INGREDIENTS
    instructions: <<~INSTRUCTIONS,
      1. In a bowl, sift together flour, baking powder, salt, and sugar.
      2. Make a well in the center and pour in milk, egg, and melted butter.
      3. Mix until smooth.
      4. Heat lightly oiled griddle and pour batter for each pancake.
      5. Cook until golden on both sides.
    INSTRUCTIONS
    difficulty: "easy",
    photo_url: "https://iwashyoudry.com/wp-content/uploads/2019/05/Classic-Pancake-Recipe-4-675x886.jpg"
  },
  {
    title: "Vegetarian Stuffed Peppers",
    submitted_by: "Leah G.",
    ingredients: <<~INGREDIENTS,
      - 4 bell peppers, tops removed and cored
      - 1 cup cooked quinoa
      - 1 can black beans, rinsed
      - 1 cup corn kernels
      - 1/2 cup diced tomatoes
      - 1 tsp cumin
      - 1 tsp chili powder
      - 1/2 cup shredded cheddar
      - Salt and pepper
    INGREDIENTS
    instructions: <<~INSTRUCTIONS,
      1. Preheat oven to 375°F.
      2. In a bowl, combine quinoa, beans, corn, tomatoes, and spices.
      3. Stuff mixture into peppers and top with cheese.
      4. Place in baking dish, cover with foil, and bake for 30 minutes.
      5. Uncover and bake 10 more minutes until cheese is bubbly.
    INSTRUCTIONS
    difficulty: "medium",
    photo_url: "https://carlahall.com/wp-content/uploads/2023/09/easy-vegan-stuffed-pepper-1024x1024.jpg"
  },
  {
    title: "5-Minute Banana Smoothie",
    submitted_by: "Nina K.",
    ingredients: <<~INGREDIENTS,
      - 2 ripe bananas
      - 1 cup milk or almond milk
      - 1/2 cup Greek yogurt
      - 1 tbsp honey
      - 1/4 tsp cinnamon
      - Ice (optional)
    INGREDIENTS
    instructions: <<~INSTRUCTIONS,
      1. Combine all ingredients in a blender.
      2. Blend on high until smooth and creamy.
      3. Pour into a glass and serve immediately.
    INSTRUCTIONS
    difficulty: "easy",
    photo_url: "https://www.inspiredtaste.net/wp-content/uploads/2016/06/Banana-Smoothie-Recipe-4-1200.jpg"
  },
  {
    title: "Thai Green Curry",
    submitted_by: "Priya S.",
    ingredients: <<~INGREDIENTS,
      - 1 tbsp green curry paste
      - 1 can coconut milk
      - 1/2 lb chicken or tofu, cubed
      - 1 cup chopped bell peppers
      - 1/2 cup bamboo shoots
      - 1 tbsp fish sauce or soy sauce
      - 1 tsp sugar
      - Fresh basil leaves
    INGREDIENTS
    instructions: <<~INSTRUCTIONS,
      1. Heat a pan and fry curry paste for 1 min.
      2. Add coconut milk and bring to simmer.
      3. Add chicken or tofu, cook until done.
      4. Stir in vegetables, fish sauce, and sugar. Simmer 10 min.
      5. Garnish with basil before serving.
    INSTRUCTIONS
    difficulty: "hard",
    photo_url: "https://www.recipetineats.com/tachyon/2019/02/Thai-Green-Curry_5.jpg?resize=900%2C1260&zoom=0.72"
  }
])
