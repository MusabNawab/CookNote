import 'package:meals_app/models/receipes_class.dart';

final recepies = [
  Meal(
    id: 'm1',
    categories: [
      'c3',
    ],
    title: 'Spaghetti with white sauce',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl: 'https://i.imgur.com/TwR7xom.png',
    duration: 20,
    ingredients: [
      '100 gms Spaghetti',
      '1 small carrot',
      '250 ml Milk',
      '2 tbsp Maida',
      '1 tsp olive oil',
      '4 tsp butter',
      '1/4 tsp salt',
      '1/4 tsp crushed black pepper',
      '2 tbsp diced cheese (mozzarella & cheddar blend)',
      '1/4 tsp crushed oregano',
      '1/4 tsp chilli flakes',
    ],
    steps: [
      'Boil pasta in sufficient water for 5/7 mins, time will vary based on the type of pasta. You can know by the change of colour to off-white. In the mean time in a spoon of olive oil, cook the carrot and take out in a bowl.',
      'In the same hot pan, heat butter, minced garlic, fry till garlic turns light brown.',
      'Now add the Maida and stir for 1/2 mins. Pour in the milk and stir continuously, to avoid lump formation. When the gravy thickens, add the previously cooked carrot, salt, and black pepper.',
      'Mix well, to which goes the pasta now. Give a gentle mix, without breaking the threads. Switch off the heat and top with diced cheese, oregano & chilli flakes.',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm2',
    categories: [
      'c',
    ],
    title: 'Toast Hawaii',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    duration: 10,
    ingredients: [
      '1 Slice White Bread',
      '1 Slice Ham',
      '1 Slice Pineapple',
      '1-2 Slices of Cheese',
      'Butter'
    ],
    steps: [
      'Butter one side of the white bread',
      'Layer ham, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven at 200°C'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm3',
    categories: [
      'c',
      'c6',
    ],
    title: 'Classic Hamburger',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
    duration: 45,
    ingredients: [
      '300g Cattle Hack',
      '1 Tomato',
      '1 Cucumber',
      '1 Onion',
      'Ketchup',
      '2 Burger Buns'
    ],
    steps: [
      'Form 2 patties',
      'Fry the patties for c. 4 minutes on each side',
      'Quickly fry the buns for c. 1 minute on each side',
      'Bruch buns with ketchup',
      'Serve burger with tomato, cucumber and onion'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm4',
    categories: [
      'c5',
    ],
    title: 'Ramen Bowl',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl: 'https://i.imgur.com/OtOuZdh.png',
    duration: 25,
    ingredients: [
      '1 Tbsp Sunflower',
      '1 Cup Mushroom',
      '1 Tsp Sunflower Oil',
      '1 Tbsp Ginger',
      '0.25 Cup Spring Onion',
      '1 Tbsp Soy Sauce',
      '3 Cup Water',
      '1 Maggi Masala Powder',
      '2 Maggi',
      '0.5 Cup Palak',
      '1 Egg',
      '1 Pinch Salt',
      '1 Pinch Black Pepper Powder',
      '2 Tbsp Spring Onion',
      '1 Tsp Sriracha Sauce',
      'as required White Sesame Seeds',
    ],
    steps: [
      'Heat oil in a pan and add the mushrooms. Saute on high heat for 2 minutes. Remove the mushrooms from the pan and set aside.',
      'In the same pan, add more oil. Add ginger, garlic and spring onion whites. Saute for 30 seconds or until fragrant. Add the soy sauce.',
      'Add water and maggi seasoning. Once it comes to a boil, add the maggi noodles. Boil for 2 minutes.',
      'Add the spinach and cook for 30 seconds more.',
      'To make a soft boiled egg, heat water in a pan. The level of water should be around 1 inch. Add the egg, cover and cook for 6 minutes.',
      'Remove the egg from the pot and put it into ice cold water. Once it is cool enough to handle, peel the egg and cut in half. Season with salt and pepper.',
      'Pour the noodles and broth into a bowl. Top with sriracha sauce, the soft-boiled egg, mushroom, spring onion and sesame seeds.',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm5',
    categories: [
      'c'
          'c5',
      'c10',
    ],
    title: 'Salad with Smoked Salmon',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
    duration: 15,
    ingredients: [
      'Arugula',
      'Lamb\'s Lettuce',
      'Parsley',
      'Fennel',
      '200g Smoked Salmon',
      'Mustard',
      'Balsamic Vinegar',
      'Olive Oil',
      'Salt and Pepper'
    ],
    steps: [
      'Wash and cut salad and herbs',
      'Dice the salmon',
      'Process mustard, vinegar and olive oil into a dessing',
      'Prepare the salad',
      'Add salmon cubes and dressing'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm6',
    categories: [
      'c8',
    ],
    title: 'Delicious Orange Mousse',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    duration: 240,
    ingredients: [
      '4 Sheets of Gelatine',
      '150ml Orange Juice',
      '80g Sugar',
      '300g Yoghurt',
      '200g Cream',
      'Orange Peel',
    ],
    steps: [
      'Dissolve gelatine in pot',
      'Add orange juice and sugar',
      'Take pot off the stove',
      'Add 2 tablespoons of yoghurt',
      'Stir gelatin under remaining yoghurt',
      'Cool everything down in the refrigerator',
      'Whip the cream and lift it under die orange mass',
      'Cool down again for at least 4 hours',
      'Serve with orange peel',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm7',
    categories: [
      'c8',
    ],
    title: 'Pancakes',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    duration: 20,
    ingredients: [
      '1 1/2 Cups all-purpose Flour',
      '3 1/2 Teaspoons Baking Powder',
      '1 Teaspoon Salt',
      '1 Tablespoon White Sugar',
      '1 1/4 cups Milk',
      '1 Egg',
      '3 Tablespoons Butter, melted',
    ],
    steps: [
      'In a large bowl, sift together the flour, baking powder, salt and sugar.',
      'Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.',
      'Heat a lightly oiled griddle or frying pan over medium high heat.',
      'Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c1',
    ],
    title: 'Indian Chicken Curry',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageUrl: 'https://i.imgur.com/fkeF4Hd.png',
    duration: 35,
    ingredients: [
      '400 gms chicken with bones',
      '1/2 tsp turmeric powder',
      '1/2 tsp red chilli powder',
      '1/2 tsp salt',
      '1 tsp mustard oil',
      '7-8 cashewnuts',
      '4-5 walnuts',
      '1 tbsp raisins',
      '2 tbsp curd',
      '1 tbsp fresh cream or malai',
      '2 onions chopped finely',
      '1.5 tsp ginger paste',
      '1 tsp garlic paste',
      '1.5 tsp Korma Masala',
      '1/2 tsp cumin powder',
      '1 tsp coriander powder',
      '1 tsp fennel seed powder',
      '1 tsp Kashmiri Red Chilli Powder',
      '2 tbsp tomato puree',
      '1/2 tsp garam masala powder',
      '3 green cardamoms',
      '1 stick cinnamon',
      '4-5 cloves',
      '1/2 tsp fennel and cumin seeds',
      '3 tbsp mustard oil',
      '2 tsp ghee',
      '1 tbsp coriander(cilantro).chopped',
      'To taste salt',
      'Few roasted dry fruits for garnishing',
      '1 cup warm water or as needed',
    ],
    steps: [
      'Marinate chicken with turmeric,red chilli powder and salt for an hour.Meanwhile make a fine paste of the dry fruits alongwith curd and fresh cream.Heat 2 tbsp oil in a pan and fry the chicken till golden brown.Flip and fry.Set aside.',
      'Add ghee and 1 tbsp more oil to the remaining oil.Sprinkle half crushed whole garam masala,fennel and cumin seeds.When they splutter, add the chopped onion and fry in medium heat till golden brown. Add ginger garlic paste and saute till aromatic.',
      'Add ghee and 1 tbsp more oil to the remaining oil.Sprinkle half crushed whole garam masala,fennel and cumin seeds.When they splutter, add the chopped onion and fry in medium heat till golden brown. Add ginger garlic paste and saute till aromatic.',
      'Add the dry masala powders,cashewnut walnut and raisin paste alongwith curd and fresh cream.Also add tomato puree.Saute stirring constantly for 2 minutes.Add the fried chicken.Add water as needed.Cover and cook for 10 minutes under medium heat until chicken is fully cooked and the gravy coats chicken.',
      'Garnish with fried cashews, walnuts and raisins and chopped cilantro / coriander and serve with steamed or jeera (cumin) rice, or any Indian flat bread for a special weekend dinner or at parties.',
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm9',
    categories: [
      'c9',
    ],
    title: 'Chocolate Souffle',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
    duration: 45,
    ingredients: [
      '1 Teaspoon melted Butter',
      '2 Tablespoons white Sugar',
      '2 Ounces 70% dark Chocolate, broken into pieces',
      '1 Tablespoon Butter',
      '1 Tablespoon all-purpose Flour',
      '4 1/3 tablespoons cold Milk',
      '1 Pinch Salt',
      '1 Pinch Cayenne Pepper',
      '1 Large Egg Yolk',
      '2 Large Egg Whites',
      '1 Pinch Cream of Tartar',
      '1 Tablespoon white Sugar',
    ],
    steps: [
      'Preheat oven to 190°C. Line a rimmed baking sheet with parchment paper.',
      'Brush bottom and sides of 2 ramekins lightly with 1 teaspoon melted butter; cover bottom and sides right up to the rim.',
      'Add 1 tablespoon white sugar to ramekins. Rotate ramekins until sugar coats all surfaces.',
      'Place chocolate pieces in a metal mixing bowl.',
      'Place bowl over a pan of about 3 cups hot water over low heat.',
      'Melt 1 tablespoon butter in a skillet over medium heat. Sprinkle in flour. Whisk until flour is incorporated into butter and mixture thickens.',
      'Whisk in cold milk until mixture becomes smooth and thickens. Transfer mixture to bowl with melted chocolate.',
      'Add salt and cayenne pepper. Mix together thoroughly. Add egg yolk and mix to combine.',
      'Leave bowl above the hot (not simmering) water to keep chocolate warm while you whip the egg whites.',
      'Place 2 egg whites in a mixing bowl; add cream of tartar. Whisk until mixture begins to thicken and a drizzle from the whisk stays on the surface about 1 second before disappearing into the mix.',
      'Add 1/3 of sugar and whisk in. Whisk in a bit more sugar about 15 seconds.',
      'whisk in the rest of the sugar. Continue whisking until mixture is about as thick as shaving cream and holds soft peaks, 3 to 5 minutes.',
      'Transfer a little less than half of egg whites to chocolate.',
      'Mix until egg whites are thoroughly incorporated into the chocolate.',
      'Add the rest of the egg whites; gently fold into the chocolate with a spatula, lifting from the bottom and folding over.',
      'Stop mixing after the egg white disappears. Divide mixture between 2 prepared ramekins. Place ramekins on prepared baking sheet.',
      'Bake in preheated oven until scuffles are puffed and have risen above the top of the rims, 12 to 15 minutes.',
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm10',
    categories: [
      'c7',
    ],
    title: 'Asparagus Salad with Cherry Tomatoes',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
    duration: 30,
    ingredients: [
      'White and Green Asparagus',
      '30g Pine Nuts',
      '300g Cherry Tomatoes',
      'Salad',
      'Salt, Pepper and Olive Oil'
    ],
    steps: [
      'Wash, peel and cut the asparagus',
      'Cook in salted water',
      'Salt and pepper the asparagus',
      'Roast the pine nuts',
      'Halve the tomatoes',
      'Mix with asparagus, salad and dressing',
      'Serve with Baguette'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm11',
    categories: [
      'c2',
    ],
    title: 'Arabian Chicken kebab along with 3 sauces',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageUrl: 'https://i.imgur.com/rf6r1vN.png',
    duration: 60,
    ingredients: [
      '2 tbsp coriander seeds',
      '1 tbsp cumin seeds',
      '8-10 black pepper',
      '7-8 green cardamom',
      '2 bay leaves',
      '1 star anise',
      '1 small mace',
      '1 " cinnamon stick',
      '6-7 cloves',
      '2 cups soaked basmati rice',
      '100 gm clarified butter (half cup)',
      '3 tbsp ginger garlic paste',
      '500 gm 2 leg pieces',
      '1 tsp red chilli powder',
      '1 tsp turmeric powder',
      '2 tomatoes chopped',
      '2 onion chopped',
      '1 tsp lemon juice',
      'Lemon zest of one lemon',
      '15-16 almond',
      '15-16 cashew nuts',
      '15-16 raisins',
      '1 " cinnamon stick',
      '2 bay leaves',
      '1 star anise',
      '1 black cardamom',
      '3-4 cloves as per taste Salt',
      '4 cups Water',
    ],
    steps: [
      'First heat a pan add all kabsa masala ingredients and lightly dry roast then cool down. Now add this in a grinder jar and grind it into a proper powder and keep aside.',
      'Now marinate chicken by adding kabsa masala, ginger garlic paste, lemon juice, lemon zest, red chilli powder, turmeric powder and salt. Mix all well and marinate for 30-40 minutes.',
      'Heat 2 tsp ghee in a pan, add cashew nuts, almond, raisins and fry until they turn little brown and take them out in a plate.',
      'Heat ghee in a kadai add bay leaves, star anise, cinnamon stick, black cardamom, cloves then add chopped onion and saute.',
      'Now add marinated chicken pieces and cook in high flame for 4-5 minutes then cover it and cook in slow flame another 7-8 minutes then add chopped tomatoes and cook some times.',
      'Now add 4 cups Of hot water, cover it and cook for some times till the chicken pieces are almost cooked.',
      'Heat 2 tbsp ghee in another non- stick pan. Remove chicken pieces from the first pan and put into the second pan and roast it with sprinkle some kabsa masala on the both sides and keep aside.',
      'Drain rice and add to the first pan and add half of the fried almonds, cashew nuts and raisins, cover and cook.',
      'When both rice and chicken are done, put rice in a serving plate, place the roasted chicken over rice.',
      'Garnish with remaining fried almond, cashew nuts, raisins, lemon slices and serve hot with salads.',
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm12',
    categories: [
      'c2',
    ],
    title: 'Arabian Biryani',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageUrl: 'https://i.imgur.com/u1S3H8m.png',
    duration: 60,
    ingredients: [
      '500 gms Mutton',
      '2 cups Basmati rice (soaked for an hour in water and strained)',
      '3-4 pcs Chopped onion',
      '3 pcs Chopped Tomatoes',
      '2 tsp Black pepper',
      '2 tsp Coriander seeds',
      '2 tsp Fennel seeds',
      '2 tsp Cumin seeds',
      '2 pcs Cinnamon sticks',
      '12 pcs Green cardamom',
      '2 pcs Black Cardamom',
      '2 pcs Bay leave',
      '1 tsp Garlic paste',
      '1 tsp Green chilli paste',
      '1 tbsp lemon juice',
      '2 pcs whole lemon',
      '2 tsp Dry Fruits Cashew nuts and almonds',
      'As required Oil for cooking',
    ],
    steps: [
      'Firstly prepare Mandi masala: In a grinder add black pepper 1tsp, coriander seeds 1tsp, fennel seeds 1tsp, cumin seeds 1 tsp, cinnamon sticks 2 pcs, green cardamom 6 pcs, black cardamom 1 pcs, Bay 1pcs. Grind them all turn them into powder form and keep them aside.',
      'Then in a pressure cooker add 6 tbsp of oil, in it add chopped onion. Saute it for a while.',
      'After that now add in it chopped tomatoes in the cooker and saute it till it softens. Now add one bay leaves. Give a stir.',
      'Hereafter that now adds mutton pieces. In it add garlic paste. Saute it till the meat colour changes. Then add green chili paste 1tsp. Mix them.',
      'Now at this point add the prepared mandi masala in it and also add some salt to taste. Now saute this for 2 min properly. Lastly, add 1 tbsp of lemon juice in if.',
      'Add one glass of extra water according to rice (if rice is 2 cup water should be 3 cups) As because we need this stock (yakhni) later on to prepare rice.',
      'Now cook in a pressure cooker after pressure develops cook for about 12 min with 2 whistles.later on separate the mutton from stock in another bowl and keep the stock for later use.',
      'Now prepare a potli to make the rice more flavourful. Potli ingredients: coriander seeds 1tsp, fennel seeds 1tsp, green cardamom 6 pcs, black cardamom 1 pcs, cumin seeds 1tsp, black pepper 1tsp.',
      'Now pour that stock in big utensils and add this potli in it.',
      'Now add rice to the stock. When water is about to come to rice level. now add the food colour and turn the flame to slow for about 20 mins. Keep the rice in dum for 20 mins on low flame.',
      'In a frying pan roast some dry fruits in oil and take them out after 20 secs. Now in the same pan fry all the cooked muttons.',
      'Now Open the lid of utensils and add these fry muttons and dry fruits from the top and take them out on a plate and ready to serve with some coriander tomato salsa or raita.',
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm13',
    categories: [
      'c2',
    ],
    title: 'Mahalabia the Arabian desserts',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl: 'https://i.imgur.com/cP3a3fK.png',
    duration: 30,
    ingredients: [
      '1/2 liter full fat milk',
      '3 table spoon cornflour',
      '5 table spoon sugar',
      '2 table spoon rose water',
      '4 table spoon pamagrate seeds',
      '2 table spoon chopped almonds',
      '2 table spoon pumpkin seeds',
      '1 tablespoon rooh afza',
      '3 table spoon million powder',
    ],
    steps: [
      'In a pan add milk,sugar & cornflour liquid. Keep on the flame. Stir it occasionally with beater. Remember stir it fast otherwise cornflour changes in lumps.',
      'After a particular consistency of milk off the flame. Stir it some more time aftercool down. Add rose water in this milk also.',
      'Fill it in serving bowls & decorate it with chopped almonds, seeds & pamagrate seeds. For different taste in one bowl I used rooh afza.',
      'After decorate the bowls we can keep it in freeze for 1/2 hour. It will be set proper. Mahalabiya is ready for serve.',
      'I make it first time, but it is very tasty & delicious.',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm14',
    categories: ['c1', 'c6'],
    title: 'Crispy Aloo Vada & Pav',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl: 'https://i.imgur.com/VJFWsjN.png',
    duration: 25,
    ingredients: [
      '10 boiled potatoes',
      '8 green chillies, finely chopped',
      '1 inch ginger',
      '10 garlic cloves',
      '10 curry leaves',
      '1/2 cup chopped Coriander leaves',
      '1/2 tsp mustard seeds',
      '1/2 tsp cumin seeds',
      '1/2 tsp hing',
      '1/2 lemon juice',
      'As per Taste salt',
      '2 cups gram flour (besan)',
      '1/2 spoon red Chilli powder',
      '1/2 spoon ajwain',
      '1/2 spoon haldi powder',
      '1/2 tsp hing',
      'As per taste Salt',
      'As required Water to make thick batter',
      '4 raw potatoes',
      'as per taste Salt',
      '4 spoons corn flour',
    ],
    steps: [
      'First take all ingredients mentioned above to make potato sabji Now grate green Chilli ginger & garlic & grate potato & chop curry leaves & coriander',
      'Now take 4 spoon oil in pan add mustard seeds, then cumin seeds, hing & curry leaves & grind paste of green Chilli & ginger & garlic Then stir it and add haldi powder & salt & again mix it properly',
      'Now add potatoes & Then coriander & mix it gently Then close the flame of gas and then add 1/2 lemon juice & mix it properly',
      'Now for outer covering take four raw potatoes & grate them in grater & immediately transfer it in bowl Wash it under running water so that potatoes are clean in water Add salt to it & close with lid & keep aside',
      'Now after 15 minutes discard water from potatoes & keep potatoes in thin cotton cloth & twist the cloth so extra water is removed from potatoes Add cornflour & salt in potatoes & mix well so all potatoes which are grated does not stick to each other',
      'Now for besan batter mix all ingredients in besan & add little water to adjust consistency',
      'Now your potatoes mixture is cool now make small balls from this as shown in Pic',
      'Now heat oil in pan add one by one ball in batter & Then coat with potato mixture which we had prepared Now your crispy vada are ready',
      'Like this method fry all vadas they are very crispy vada Serve it with green chutney & garlic chutney with fry green Chilli',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm15',
    categories: [
      'c1',
    ],
    title: 'Aloo ke parathe with green chutney',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl: 'https://i.imgur.com/eoF13kB.png',
    duration: 30,
    ingredients: [
      '3 big boiled potato',
      '5-6 finely chopped chillies',
      'leaves Chopped fresh coriander',
      'as required Red chilli powder',
      'As per taste Salt',
      '1 tsp Jeera and saunf and heeng',
      'as per requirement Wheat flour and water and carom seeds',
      'leaves Green coriander',
      '1-2 cloves Garlic',
      '2 tomato',
      '1 inch Ginger',
      '1 green chilli',
      'as per taste Salt and pepper corn',
    ],
    steps: [
      'Mashed potatoes in a big bowl and add green chillies and coriander leaves and mix properly.',
      'Add salt and red chilli powder and mix it.',
      'Now heat 1 teaspoon oil in a kadhai, add jeera and saunf and heeng and than add potato masala in it and fry for 10 minutes.',
      'Take it out in a plate and let it cool down.',
      'Now take wheat flour in a bowl and add carom seeds and salt and knead a soft dough with help of water.',
      'Now take a small ball from dough and flat it and fill potato mixture and roll it round.',
      'Heat tawa and cook the Paratha with oil in both sides till golden and crisp.',
      'For chutney, take all ingredients of chutney in a jar and grind it proper.',
      'Enjoy hot parathas with green chutney.',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm16',
    categories: [
      'c3',
    ],
    title: 'Banana chocolate tortino(Italian dessert)',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl: 'https://i.imgur.com/wP7Wh9u.png',
    duration: 20,
    ingredients: [
      '2 big ripe bananas',
      '200 grams melted chocolate',
      '1 tsp butter',
    ],
    steps: [
      'Firstly add chopped bananas to a blender.and blend to smooth paste.',
      'Now add, butter and melted chocolate, and blend it again.',
      'Now pour this mixture into the greased moulds.',
      'Refrigerate it for 2-3 hours,demould garnish, and relish it.',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm17',
    categories: [
      'c3',
    ],
    title: 'Italian Pizza Waffle',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl: 'https://i.imgur.com/BdQHHXE.png',
    duration: 20,
    ingredients: [
      '2 pieces chilli flakes square pizza base',
      'Olive oil as required',
      '2 tbsp finely chopped tomato',
      '2 tbsp finely chopped red bell pepper',
      '2 tbsp finely chopped yellow bell pepper',
      '2 tbsp finely chopped green capsicum',
      '2 tbsp finely chopped onion',
      'leaves Few fresh basil',
      '3/4 cup tomato ketchup',
      '1 tbsp pizza seasoning',
      '5-6 basil leaves',
      'As Required Pizza Cheese',
      'As Required Red chilli flakes',
      'As required Oregano powder',
    ],
    steps: [
      'Mashed potatoes in a big bowl and add green chillies and coriander leaves and mix properly.',
      'Add salt and red chilli powder and mix it.',
      'Now heat 1 teaspoon oil in a kadhai, add jeera and saunf and heeng and than add potato masala in it and fry for 10 minutes.',
      'Take it out in a plate and let it cool down.',
      'Now take wheat flour in a bowl and add carom seeds and salt and knead a soft dough with help of water.',
      'Now take a small ball from dough and flat it and fill potato mixture and roll it round.',
      'Heat tawa and cook the Paratha with oil in both sides till golden and crisp.',
      'For chutney, take all ingredients of chutney in a jar and grind it proper.',
      'Enjoy hot parathas with green chutney.',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm23',
    categories: [
      'c4',
    ],
    title: 'Hakka noodles',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl: 'https://i.imgur.com/x9b0SkT.png',
    duration: 20,
    ingredients: [
      '250 gms Noodle',
      '1/4 cup Carrot shradded',
      '1/4 cup Cabbage',
      '1/4 cup Capsicum',
      '1/2 cup Onion',
      '1/4 cup Green Onion',
      '1 tbs Ginger and red chilli chopped',
      '1 tbs Garlic',
      '1 tbs Salt to taste oil',
      '1 tsp Soya sauce',
    ],
    steps: [
      'Boil noodles in hot water with salt Drain it in strainer now keep aside dry on cotton cloth',
      'In a pan add oil add adrak mirchi garlic and sautte them add all vegetable and onion cook them for few mini',
      'Add salt mix very well last add noodles and Soya sauce and mix them for few mini add green garlic onion and sallary',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm18',
    categories: [
      'c4',
    ],
    title: 'Chilli chicken',
    affordability: Affordability.pricey,
    complexity: Complexity.hard,
    imageUrl: 'https://i.imgur.com/oeDHWDj.png',
    duration: 40,
    ingredients: [
      '250 g chicken',
      'as per requirement Salt to taste',
      '1 tsp ginger garlic paste',
      'as required Juice of half lemon',
      '1 tsp black pepper powder',
      '1 egg',
      '2-3 tbsp cornflour',
      '40 ml oil',
      '1 whole garlic (cloves chopped small)',
      '1 tsp ginger grated',
      '2 fresh green chillies (Increase spiciness as per your taste)',
      '1 onion chopped small',
      'pieces Fried chicken',
      'sauce mixture (1 tbsp tomato sauce, 1 tbsp chilli sauce, 1 tsp soya sauce, 1/2 tsp vinegar, 1 tsp chicken masala)',
      '1 onion (petals)',
      '1 capsicum (cut into squares)',
      '1/2 tsp black pepper powder',
      'cornflour slurry (1 tbsp cornflour+ water)',
      'as needed Water',
      'as required Onion Greens for garnish',
    ],
    steps: [
      'Marinate the chicken with the above-mentioned ingredients. Keep for 30 minutes to an hour.',
      'Next heat oil and fry the marinated chicken pieces. Next prepare the sauce mixture with the above-mentioned ingredients. Next in a wok/ kadhai heat oil. Saute chopped garlic.',
      'Next add grated ginger and fresh green chillies.',
      'Next add in chopped onion. Put salt as needed. Add black pepper powder. Saute till onion are brownish.',
      'Next add in the fried chicken pieces. Add little water and mix. Let it be in medium heat for some time.',
      'Next add in onion petals and capsicum squares. Saute all together for some time. Next add the sauce mixture. Mix well.',
      'Next add the cornflour slurry. If required add some water. Give a nice mix.',
      'It\'s ready! Garnish with onion greens. Mix and serve!!',
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm19',
    categories: ['c4', 'c6'],
    title: 'Vegetable momos',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl: 'https://i.imgur.com/2XXe0aV.png',
    duration: 35,
    ingredients: [
      '1.5 cup plain flour',
      'as required Water for Kneading',
      'as required Oil for greasing',
      '3 tsp oil',
      '2 chilli (finely chopped)',
      '4 tbsp spring onion',
      '1 cup carrot (grated)',
      '2 cup cabbage (shredded)',
      '1/2 tsp pepper',
      '1/2 tsp salt',
    ],
    steps: [
      'Firstly, prepare stuffing by heating oil and saute chilli, also add spring onion and saute on high flame. Further, add carrot and cabbage stir fry on high flame. Now add pepper and salt. Additionally, spring onion stuffing mixture is ready.',
      'Add maida, oil, and salt in a large bowl. Mix all ingredients well and prepare a soft dough by adding water as needed. Pinch a small ball and flatten. Now place a stuffing in the centre. Start pleating the edge slowly and gather everything. Press in middle and seal the momos forming a bundle. Heat the steamer and arrange the momos in the tray. Without touching each other.',
      'Furthermore, steam momos for 10-12 minutes or till shiny sheen appear over it. Finally vegetable momos recipe is ready to enjoy with momos chutney........... Enjoy',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm20',
    categories: [
      'c5',
    ],
    title: 'Japanese Tofu',
    affordability: Affordability.affordable,
    complexity: Complexity.challenging,
    imageUrl: 'https://i.imgur.com/cjiJHmw.png',
    duration: 150,
    ingredients: [
      '4 eggs',
      '1.4 cups Daishi or Fish broth',
      '1 tsp Mirin',
      '1/2 tsp salt',
      '1 Tbsp soya sauce',
      '1 Tbsp Mirin',
      '1/2 cup Dashi',
      'As Required Serve on rice or eat on its own or dried fish or spring onions garnished',
    ],
    steps: [
      'For Tofu - in a bowl break eggs, beat',
      'Add Daishi, salt, and Mirin and mix well',
      'Place on a square baking tray or individual water-resistant glass bowls. Remove the bubbles',
      'Steam covered for 12-13 mins, set aside to cool completely',
      'Refrigerate for 2 hrs',
      'For Sauce - in a pan heat water, add Dashi, Mirin and Soya sauce and bring it to boil, set aside to cool',
      'Serve on a bowl of rice and place the Tofu, drizzle with sauce and garnish with spring onions chopped',
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm21',
    categories: [
      'c5',
    ],
    title: 'Japanese Teriyaki Chicken',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl: 'https://i.imgur.com/ixA3ou8.png',
    duration: 30,
    ingredients: [
      '250-300 gms Chicken Breasts (Boneless)',
      'to taste Salt',
      '1 tbsp Honey',
      '1 tbsp Dark Soya Sauce',
      '1 tbsp Rice Vinegar or Apple Cider Mother',
      '1 tbsp White Vinegar (if not using the Rice Vinegar)',
      '1 tbsp Red Chilli Sauce',
      '1 tbsp Hot & Sweet Tomato Ketchup: Optional',
      '1-1.5 tbsps (2 G) Paste (Ginger-Garlic Paste)',
      '1 tbsp White Sesame Seeds',
      '1 tbsp Olive Oil: Optional',
      '1 tbsp Butter',
      '1 tbsp Sesame Oil',
      '1-1.5 tsps Black Peppercorns: Freshly Cracked',
      '1 tsp Red Chilli Flakes: Optional',
      '1/4 Cup Fresh Chives: Chopped- (I didn’t use it not being readily available to me right away)',
      '1/4 Cup Green Onions: Finely Chopped',
      'As Required : Water (Hot)',
      'Garnish: A Handful- White Sesame',
      '1 Handful: Chives- Freshly & Finely Chopped',
    ],
    steps: [
      'Firstly, cut/cube the chicken breasts according to the sizes & shapes you want- wash them well & pat dry & set aside for sometime',
      'Then, in a mixing bowl: Add in the measured above ingredients altogether (except the oil & butter), mix everything well together until nicely combined and well blended with each other- Cover it & set aside for at least 4-6 hrs time (more or overnight is always better)',
      'Now, post the given time frame: Take it out from the refrigerator and let it thaw to get back to the RT…Heat up a frying pan over the medium flame & add in the oil & butter both…',
      'With the help of the tongs gently lift up the chicken pieces, squeeze out the liquid mixture in it- as much is possible & then drop it into the frying pan- Repeat this process with all the chicken pieces & sauté them until nicely golden browned',
      'Once done take it out to a separate plate/dish…In the same pan- Add in some more oil & butter admixtures over the medium flame- Add in the remaining gravy mixture (in which the chicken pieces were marinated), add into it some hot water & let it cook for sometime',
      'Checkout the seasonings at this point- Adjust, if required, Once the gravy starts thickening- Goes in the cooked chicken pieces to it & mix everything well together until nicely combined and well incorporated, cover & cook for about 3-4 minutes on the low-medium flame',
      'Uncover- Checkout, if the Chicken pieces seem to be well cooked- Soft & Juicy and has inflated a bit due to that, turn off the flame- Transfer it to a separate plate for serving…',
      'Garnish it your own way- It’s just ready to be grabbed immediately with the condiments of your choice or simply with some Japanese/Chinese/Thai/Malaysian Noodles or Fried Rice or just the Veg. or Non-veg Sushi ENJOY',
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm22',
    categories: [
      'c8',
    ],
    title: 'Red Velvet Cupcakes',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl: 'https://i.imgur.com/P3zqCOi.png',
    duration: 45,
    ingredients: [
      '1.5 cup all purpose flour',
      '6 tbsp powdered sugar',
      '1.5 tbsp cocoa powder',
      '1.5 tsp baking powder',
      '1/2 tsp baking soda',
      '200 ml condensed milk',
      '1 cup milk',
      '3 tbsp vinegar',
      '1.5 tsp vanilla essence',
      '3 tsp liquid red colour',
      '100 gm butter (room temperature)',
      '1/4 cup curd',
      'Cream cheese frosting to frost the cupcakes',
    ],
    steps: [
      'Sieve flour, sugar, cocoa powder, baking powder and baking soda in a bowl. Now take milk in a bowl and add vinegar, vanilla essence and red colour to it and give it a good mix. Now add condensed milk to the dry ingredients. Mix everything well.',
      'Add milk mixture and butter to the bowl and beat everything well until light and fluffy.',
      'Line a cupcake tin and divide the batter into 12 equal portions. This can make 24 smaller cupcakes. Bake it in a preheated oven at 180 degree for 20 minutes or until done. Let the cupcakes cool down completely before frosting.',
      'Frost the prepared cupcakes using cream cheese frosting.',
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: false,
    isLactoseFree: false,
  ),
];
