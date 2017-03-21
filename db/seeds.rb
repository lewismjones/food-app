Category.create!([
  {description: "Beef"},
  {description: "Poultry"},
  {description: "Seafood"},
  {description: "Vegetarian"}
])
Image.create!([
  {recipe_id: 5, image_url: "http://i63.tinypic.com/51ugxk.jpg"}
])
Ingredient.create!([
  {name: "1 Ny steak\r\narugula\r\nfeta cheese\r\nsalt\r\npepper\r\nbalsamic vinegar or some vinegar\r\nolive oil\r\nthyme\r\n4 figs halfed", recipe_id: 3},
  {name: "1 Filet mignon\r\nSalt\r\npepper\r\nRosemary\r\nSpinach\r\nolive oil\r\ngarlic", recipe_id: 4},
  {name: "3/4 pound beef round steak, cut into 1/8-inch thick strips\r\nSoy sauce\r\nOyster sauce \r\nBlack bean sauce optional\r\nsalt \r\npepper\r\ngarlic\r\n1/2 broccoli\r\n1/2 teaspoon \r\nOlive oil", recipe_id: 5},
  {name: "1 chicken breast\r\nolive oil\r\nsalt\r\npepper\r\nthyme\r\nyougurt 2 spoons\r\nbibb lettuce", recipe_id: 6},
  {name: "1 chicken breast\r\nsalt\r\npepper\r\ncoconut milk\r\nlemongrass optional\r\ngarlic\r\nbasmati rice\r\nolive oil", recipe_id: 8},
  {name: "1 chicken breast or half a chicken with bone\r\nsal pepper\r\nparsley white onion chopped very small\r\nolive oil\r\ncider vinegar or red vinegar\r\ngarlic\r\nChili flakes optional", recipe_id: 9},
  {name: "1 salmon filet\r\nsalt pepper\r\nDijon mustard \r\nparsley\r\nhericot vert or green beans", recipe_id: 10},
  {name: "1filet ofCod\r\nsal pepper, \r\ngarlic \r\ntomato sauce \"pomi\" or your choice or fresh roma tomatos\r\nbrown sugar\r\nbutter\r\ndry oregano", recipe_id: 11},
  {name: "1/2 a pound of shrimp\r\ngarlic\r\nparsley\r\ntarragon\r\nchilly flakes\r\nlemon and lemon zest\r\nwhite whine or vermouth\r\nsalt pepper\r\nolive oil", recipe_id: 12},
  {name: "1 cup of quinoa\r\nbaby arugula\r\nfeta cheese \r\ngrapes\r\n1 pear\r\n1/4 of a pound of walnuts\r\nred onion\r\nmustard \r\nvinagre ", recipe_id: 13},
  {name: "A bunch of green asparagus\r\ncherry tomatos\r\nolive oil\r\nrice vinegare\r\nsalt pepper\r\n2 eggs", recipe_id: 14},
  {name: "1/2 box of pasta : spaguetti, linguini your choise\"\r\ngrape tomatos \"your choise\"\r\ngarlic\r\nparsley\r\nedamame\r\n4 asparagus spears\r\nchives\r\npecorino cheese\r\ngoat cheese and little bit of 1/2 and 1/2 or milk", recipe_id: 15}
])
Instruction.create!([
  {step: "Add salt pepper thyme both sides\r\nPan fried or grill medium temperature\r\nIn a bowl mix the olive oil and balsamic\r\nToss the arugula and the cheese\r\nWhen the steak is ready cut alongside\r\nadd the figs\r\nPut on top and enjoy!", recipe_id: 3},
  {step: "Add salt, pepper, and rosemary\r\nHeat the olive oil in mediun heat\r\nAdd the filet mignon to the pan and pan fried for 8 min per side\r\nIn a pot heat a little olive oil medium high sautee the garlic \r\nAdd the spinach tos for half a minute and serve with the filet mignon\r\nenjoy!", recipe_id: 4},
  {step: "In a bowl add the beef the salt, pepper, corn starch\r\nHeat the frying pan with olive oil mediun heat\r\nAdd the beef fried 3 minutes and add the sauces \r\n\r\nAdd the garlic\r\naAdd the broccoli for 3 more minutes \r\nenjoy", recipe_id: 5},
  {step: "Add salt, pepper, thyme to the breast\r\nPan fried or grilled the breast for 6 min per side\r\nIn a Bowl add the yougurt salt pepper and a little olive oil\r\nin a plate add the lettuce the chicken all ready cuted and drizzle the yougurt sauce\r\nenjoy", recipe_id: 6},
  {step: "Add the salt pepper to the chicken\r\nIn a semi deep pot add a little olive oil and the garlic medium heat for 2 minutes\r\nAfter that add the coconut milk salt lemongrass medium heat\r\nAdd the chicken to the coconut milk for 6 minutes.\r\nIn another pot add the rice all readfy washes in water to the pot with double amount of water\r\nSimmer  for around 18 min  \r\nEnsamble your plate and enjoy", recipe_id: 8},
  {step: "Add salt and pepper to the chicken \r\npreferibly for more flavor grill it but you can pan fried \r\nwith just breast 6 min per side, for chicken with a bone aprox  8 min per side\r\nin the mind time make the sauce with the choped garlic, choped parsley \r\nchoperd onion, add the chili flakes the olive oil and the vinegar 1?2 a cup of vinegar and 1/2 a cup\r\nof olive oil\r\nWhen the chiken is ready add the suce on top and enjoy", recipe_id: 9},
  {step: "Add to the salmon salt pepper and the dijon\r\npre heat the oven 400 degrees F\r\nplace the salmon on a rack on a trey\r\nbaked for 14 minutes\r\nin the mind time boil the hericot vert for 5 min and take them out  and put in to cold water\r\nadd a little bit of olive oil salt add the salmon to the plate and enjoy!", recipe_id: 10},
  {step: "Take the cod and add salt pepper \r\nin a frying pan with a lid add the garlic with a little olive oil\r\nsauteed for 2 min medium heat\r\nadd the tomato sauce to the pan, cover all the  filet with the sauce\r\nadd a teaspoon of sugar, add the oregano and the butter\r\nand cook for 6 minutes with the lid on\r\nset up your plate with a little bit of leftover rice or pasta, your choice and enjoy!", recipe_id: 11},
  {step: "Add salt pepper and chilli flakes to the shrimp \r\nsauteed the shrimp for 3 to 4 minutes untill are red \"do not over cook\"\r\nset aside the shrimp \r\nadd to the pan a 1/2 a cup of wine or vermouth to deglace the pan\r\ncook medium heat until all the alcohol evaporates\r\nadd the lemon juice of 1 lemon and the lemon zest\r\nreduce for 2 munutes \r\nadd the shrimp dd the choped a small bunch parsley and the choped tarragon \"4 leaves\"\r\nmix well and ready! you can add pasta or rice if you want \r\nEnjoy!", recipe_id: 12},
  {step: "Cook 1 cup of quinoa with 2 cups of water or vegetal broth for 18 minutes\r\nlet it cold\r\nonce is cold add the arugula\r\nthe feta, the choped half onion the grapes the pear sliced\r\nthe walnuts, and the vinaigrette ", recipe_id: 13},
  {step: "Shave a good amount of asparagus in a mandolin or by hand\r\npan fryed with a little olve oil\r\nadd the cherry tomatos for 1 to 2 minutes always tossing with a tongs\r\nonce is ready add a little bit of rice vinegar salt and pepper\r\nadd to a nice plate and fry the eggs suny side up or optional \"soft or hard boiled eggs\"\r\nenjoy!", recipe_id: 14},
  {step: "Cook the pasta in a big pot for 8 min or follow the instructions\r\nonce cook set aside with olive oil and toss well\r\nin the meantime in a frying pan add olive oil, garlic and cook for 2 to 3 minutes\r\nadd the tomatos,  and the small choiped asparagus\r\nadd the edemame\r\nand cook for 3 min\r\nin a cup add three spoons of goat cheese and disolve with a little bit of the half and half half a cup\r\nadd pepper, you don't want to liquid.\r\nin a bowl toss the pasta with this mixture serve in a plate add pecorino and enjoy", recipe_id: 15}
])
Recipe.create!([
  {description: "Rosemary steak with sauteed spinach", category_id: 1},
  {description: " Chinesse style beef with broccoli", category_id: 1},
  {description: "Thai style chicken with basmati rice", category_id: 2},
  {description: "Grilled chicken with passley chutney", category_id: 2},
  {description: "Roasted salmon with parsley dijon glaze and hericot vert", category_id: 3},
  {description: "Poached cod in a tomato sauce over rice", category_id: 3},
  {description: "Sauteed shrimp with parsley tarragon", category_id: 3},
  {description: "Shave asparagus delite", category_id: 4},
  {description: "Linguini with edemame asparagus and goat cheese dressing", category_id: 4},
  {description: "Ny steak with arrugula and figs ", category_id: 1},
  {description: "Quinoa salad with arugula, grapes with mustard vinagrette", category_id: 4},
  {description: "Greek chicken with yogurt sauce", category_id: 1}
])
