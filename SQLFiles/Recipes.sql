USE cs340_peterkom;
CREATE TABLE Recipes(
   id        INTEGER  AUTO_INCREMENT PRIMARY KEY
  ,userId    INTEGER
  ,name      VARCHAR(46) NOT NULL
  ,photoURL  VARCHAR(210) NOT NULL
  ,recipeURL VARCHAR(95)
  ,UNIQUE(id)
  ,FOREIGN KEY(userId)REFERENCES Users(id)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO Recipes(id,userId,name,photoURL,recipeURL) VALUES (100,10000,'Salad','https://www.thespruceeats.com/thmb/wVOGDIIb6b-lfnFHcWPj7-bZZIU=/1672x1672/smart/filters:no_upscale()/perfectgreensalad2500-5993ab28c412440011db26df.jpg','https://www.thespruceeats.com/how-to-make-the-perfect-salad-4148151');
INSERT INTO Recipes(id,userId,name,photoURL,recipeURL) VALUES (200,10001,'Chicken Parmesan','https://www.cookingclassy.com/wp-content/uploads/2013/02/chicken-parmesan-16-500x500.jpg','https://www.delish.com/cooking/recipe-ideas/recipes/a51451/easy-chicken-parmesan-recipe/');
INSERT INTO Recipes(id,userId,name,photoURL,recipeURL) VALUES (300,10002,'Zucchini and  Green Bean Salad','https://food.unl.edu/recipes/zucchini-kidney-bean-recipe.jpg','https://food.unl.edu/recipe/zucchini-and-kidney-bean-salad');
INSERT INTO Recipes(id,userId,name,photoURL,recipeURL) VALUES (400,10003,'BLT sandwhich','https://res.cloudinary.com/hksqkdlah/image/upload/v1481143592/31058_sfs-ultimate-blt-sandwich-16.jpg','https://themom100.com/recipe/the-ultimate-blt-sandwich/');
INSERT INTO Recipes(id,userId,name,photoURL,recipeURL) VALUES (500,10004,'Grilled Cheese Sandwhich','https://tmbidigitalassetsazure.blob.core.windows.net/secure/RMS/attachments/37/1200x1200/Super-Grilled-Cheese-Sandwiches_exps39652_TOHCS2321916B06_14_3b_RMS.jpg','https://www.allrecipes.com/recipe/23891/grilled-cheese-sandwich/');
INSERT INTO Recipes(id,userId,name,photoURL,recipeURL) VALUES (600,10005,'Chicken Salad','https://dinnerthendessert.com/wp-content/uploads/2019/01/Classic-Chicken-Salad-2-500x500.jpg','https://dinnerthendessert.com/chicken-salad/');
INSERT INTO Recipes(id,userId,name,photoURL,recipeURL) VALUES (700,NULL,'Bacon Cheese Burger','https://d1doqjmisr497k.cloudfront.net/-/media/mccormick-us/recipes/frenchs/t/800/triple_mustard_bacon_cheese_burger800x800.jpg','https://www.mccormick.com/frenchs/recipes/main-dish/triple-mustard-bacon-cheeseburger');
INSERT INTO Recipes(id,userId,name,photoURL,recipeURL) VALUES (800,10006,'Pasta With Tomato Sauce','https://steemitimages.com/p/o1AJ9qDyyJNSg3j52kokyfvD831NZXqF92M1fFLfFKGir4974?format=match&mode=fit&width=640','https://tasty.co/recipe/penne-with-tomato-sauce');
INSERT INTO Recipes(id,userId,name,photoURL,recipeURL) VALUES (900,10007,'Hamburger','https://cookingwithcurls.com/wp-content/uploads/2016/06/These-amazing-Smashed-Burgers-are-simple-to-make-loaded-with-flavor-and-make-going-to-a-burger-joint-disappointing-cookingwit-500x500.jpg','https://cookingwithcurls.com/2016/06/07/smashed-burgers/');
INSERT INTO Recipes(id,userId,name,photoURL,recipeURL) VALUES (1000,10008,'Pasta Carbonara','https://d1doqjmisr497k.cloudfront.net/-/media/mccormick-us/recipes/grill-mates/s/800/smoky_applewood_bacon_pasta_carbonara_800x800.jpg','https://www.mccormick.com/grill-mates/recipes/main-dishes/smoky-applewood-bacon-pasta-carbonara');
INSERT INTO Recipes(id,userId,name,photoURL,recipeURL) VALUES (1100,10009,'One Pot Pasta with Sausage','https://www.smells-like-home.com/wp-content/uploads/2017/03/One-Pot-Creamy-Sausage-Pasta-square-cropped.jpeg','https://www.smells-like-home.com/2015/02/one-pot-creamy-sausage-pasta/');
INSERT INTO Recipes(id,userId,name,photoURL,recipeURL) VALUES (1200,10000,'Pasta Bolognese','https://www.recipetineats.com/wp-content/uploads/2018/07/Spaghetti-Bolognese-500x500.jpg','https://www.recipetineats.com/spaghetti-bolognese/');
INSERT INTO Recipes(id,userId,name,photoURL,recipeURL) VALUES (1300,10001,'Rice Pilaf','https://photo.foodgawker.com/wp-content/uploads/2019/04/3420589.jpg','https://letthebakingbegin.com/instant-pot-beef-rice-plov/');
INSERT INTO Recipes(id,userId,name,photoURL,recipeURL) VALUES (1400,10002,'Tuna Salad Sandwhich','https://kristineskitchenblog.com/wp-content/uploads/2019/05/tuna-salad-700-6061-1-500x500.jpg','https://kristineskitchenblog.com/tuna-salad/');
INSERT INTO Recipes(id,userId,name,photoURL,recipeURL) VALUES (1500,10003,'Tuna Salad','https://www.thespruceeats.com/thmb/75jZIq3ty50YXmHFdpNg5VzMNVs=/3000x3000/smart/filters:no_upscale()/tuna-salad-with-chopped-eggs-and-dill-3061725-hero-01-5c290d1c46e0fb00012da426.jpg',NULL);
INSERT INTO Recipes(id,userId,name,photoURL,recipeURL) VALUES (1600,10004,'Baked Chicken Schnitzel','https://images.media-allrecipes.com/userphotos/3455742.jpg',NULL);
INSERT INTO Recipes(id,userId,name,photoURL,recipeURL) VALUES (1700,10005,'Grilled Shrimp','https://cdn-image.myrecipes.com/sites/default/files/image/recipes/sl/08/06/fried-shrimp-sl-1806891-x.jpg',NULL);
INSERT INTO Recipes(id,userId,name,photoURL,recipeURL) VALUES (1800,10006,'Chicken Cordon Bleu I','https://img.buzzfeed.com/thumbnailer-prod-us-east-1/video-api/assets/97867.jpg',NULL);
INSERT INTO Recipes(id,userId,name,photoURL,recipeURL) VALUES (1900,10007,'Bacon Egg and Cheese Sandwhich with Avacado','https://www.landolakes.com/RecipeManagementSystem/media/Recipe-Media-Files/Recipes/Retail/x17/2018_Avocado-and-Bacon-Grilled-Cheese_2644_600x600.jpg?ext=.jpg',NULL);
INSERT INTO Recipes(id,userId,name,photoURL,recipeURL) VALUES (2000,10008,'Bacon Egg and Cheese Sandwhich','https://www.oliviascuisine.com/wp-content/uploads/2016/07/ny-bacon-egg-cheese-sandwich-IG.jpg',NULL);
INSERT INTO Recipes(id,userId,name,photoURL,recipeURL) VALUES (2100,10009,'Mac and Cheese','https://spicysouthernkitchen.com/wp-content/uploads/Velvet-Mac-and-Cheese-10.jpg',NULL);
INSERT INTO Recipes(id,userId,name,photoURL,recipeURL) VALUES (2200,10000,'Breakfast Burger','https://www.honeyandbirch.com/wp-content/uploads/2019/05/breakfast-black-bean-burger-19-720x720.jpg',NULL);
INSERT INTO Recipes(id,userId,name,photoURL,recipeURL) VALUES (2300,10001,'Hash Browns','https://images.media-allrecipes.com/userphotos/960x960/5965667.jpg',NULL);
INSERT INTO Recipes(id,userId,name,photoURL,recipeURL) VALUES (2400,10002,'Brussel Sprouts with Bacon','https://images.media-allrecipes.com/userphotos/960x960/4572835.jpg',NULL);
INSERT INTO Recipes(id,userId,name,photoURL,recipeURL) VALUES (2500,10003,'Chicken Potato Soup','https://www.eatwell101.com/wp-content/uploads/2017/01/crock-pot-chicken-potato-soup-recipe-800x800.jpg',NULL);
INSERT INTO Recipes(id,userId,name,photoURL,recipeURL) VALUES (2600,10004,'Meatloaf','https://www.jessicagavin.com/wp-content/uploads/2018/11/meatloaf-6-1200.jpg',NULL);
INSERT INTO Recipes(id,userId,name,photoURL,recipeURL) VALUES (2700,10005,'Italian Sausage Soup','https://www.tasteofhome.com/wp-content/uploads/2018/01/exps190710_TH163619D09_30_5b-1-696x696.jpg',NULL);
INSERT INTO Recipes(id,userId,name,photoURL,recipeURL) VALUES (2800,10006,'Sicilian Chicken Soup','https://food-fanatic-res.cloudinary.com/iu/s--BIDdA6s4--/c_thumb,f_auto,g_auto,h_1200,q_auto,w_1200/v1461761431/sicilian-chicken-soup-photo',NULL);
INSERT INTO Recipes(id,userId,name,photoURL,recipeURL) VALUES (2900,10007,'Creamy Baked Eggs','https://www.jocooks.com/wp-content/uploads/2011/07/baked-parmesan-creamy-eggs-1.jpg',NULL);
INSERT INTO Recipes(id,userId,name,photoURL,recipeURL) VALUES (3000,10008,'Colombian Eggs','http://www.diversivore.com/wp-content/uploads/2018/04/Perico-vertical-square-3.jpg',NULL);
INSERT INTO Recipes(id,userId,name,photoURL,recipeURL) VALUES (3100,10009,'Lemon Chicken','https://images.media-allrecipes.com/userphotos/960x960/6487867.jpg',NULL);
INSERT INTO Recipes(id,userId,name,photoURL,recipeURL) VALUES (3200,10000,'Bacon Quiche','https://natashaskitchen.com/wp-content/uploads/2019/11/Classic-Quiche-Lorraine-Recipe-Beautiful-flaky-pastry-crust-is-paired-with-a-delicious-savory-egg-custard.-Perfect-for-breakfast-or-brunch.-1-4-500x500.jpg',NULL);
INSERT INTO Recipes(id,userId,name,photoURL,recipeURL) VALUES (3300,10001,'Crispy Deep Fried Bacon','https://image.zmenu.com/large/234414/20150121053055139165.jpg',NULL);
INSERT INTO Recipes(id,userId,name,photoURL,recipeURL) VALUES (3400,10002,'Avocado, cheddar, and Tomato Omelet','https://www.smuckersrms.com/PhotoImage.ashx?recipeid=914&w=600&h=600',NULL);
INSERT INTO Recipes(id,userId,name,photoURL,recipeURL) VALUES (3500,10003,'Broccoli With Seriously Cheesy Sauce','https://unsophisticook.com/wp-content/uploads/2017/11/Crispy-Cheesy-Broccoli-Gratin-Square.jpg',NULL);
INSERT INTO Recipes(id,userId,name,photoURL,recipeURL) VALUES (3600,10004,'Poor Man''s Chicken Fried Steak','https://images.media-allrecipes.com/userphotos/600x600/4570519.jpg',NULL);
INSERT INTO Recipes(id,userId,name,photoURL,recipeURL) VALUES (3700,10005,'Pork Sausage Paddies','https://www.tasteofhome.com/wp-content/uploads/2017/10/exps39594_FM143298C03_07_4b_WEB-696x696.jpg',NULL);
INSERT INTO Recipes(id,userId,name,photoURL,recipeURL) VALUES (3800,10006,'Roasted Garlic and Lemon Potatoes','https://www.fromvalerieskitchen.com/wordpress/wp-content/uploads/2012/08/Lemon-and-Garlic-Roasted-Potatoes-039-e1423616890361-1-500x500.jpg',NULL);
INSERT INTO Recipes(id,userId,name,photoURL,recipeURL) VALUES (3900,10007,'Roasted Garlic Mashed Potatoes','https://www.chatelaine.com/wp-content/uploads/2019/02/garlic-mashed-potatoes-810x810.jpg',NULL);
INSERT INTO Recipes(id,userId,name,photoURL,recipeURL) VALUES (4000,10008,'AIOLI (Garlic Mayonnaise)','http://ukcdn.ar-cdn.com/recipes/port500/1e467cdf-c36e-4584-9dcb-65c5dbc17f8a.jpg',NULL);
INSERT INTO Recipes(id,userId,name,photoURL,recipeURL) VALUES (4100,10009,'Roasted Yellow Squash Salad','https://k8643br9gv-flywheel.netdna-ssl.com/wp-content/uploads/2017/09/550-roasted-summer-squash-pesto.jpg',NULL);
INSERT INTO Recipes(id,userId,name,photoURL,recipeURL) VALUES (4200,10000,'Cheesy Sausage and Pepper Stuffed Acorn Squash','https://k8643br9gv-flywheel.netdna-ssl.com/wp-content/uploads/2016/11/550-stuffed-acorn-squash-kalynskitchen.jpg',NULL);
INSERT INTO Recipes(id,userId,name,photoURL,recipeURL) VALUES (4300,10001,'Pumpkin Pastina','https://parade.com/wp-content/uploads/2018/10/low-carb-pumpkin-risotto.jpg',NULL);
INSERT INTO Recipes(id,userId,name,photoURL,recipeURL) VALUES (4400,10002,'Pickle in a Jar','https://i.imgur.com/qbXEeIb.jpg',NULL);
