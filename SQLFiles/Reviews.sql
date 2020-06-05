USE cs340_peterkom;
CREATE TABLE Reviews(
   id          INTEGER  NOT NULL PRIMARY KEY
  ,text        VARCHAR(183) NOT NULL
  ,title       VARCHAR(43) NOT NULL
  ,rating      INTEGER  NOT NULL
  ,reviewdate  DATE  NOT NULL
  ,user_id     INTEGER  NOT NULL
  ,recipe_id   INTEGER  NOT NULL
  ,UNIQUE(id)
  ,FOREIGN KEY(user_id)REFERENCES Users(id)
  ,FOREIGN KEY(recipe_id)REFERENCES Recipes(id)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO Reviews(id,text,title,rating,reviewdate,user_id,recipe_id) VALUES (901,'This salad was so bland. Honestly I would''ve been better off never folowing this recipe and using the recipe that I always use.','Worst Salad Ever',1,'2020-6-4',10000,100);
INSERT INTO Reviews(id,text,title,rating,reviewdate,user_id,recipe_id) VALUES (902,'Meh is the only thing I can describe this recipe as. There is no better description. If you want meh here is meh.','Meh',2,'2020-6-4',10001,200);
INSERT INTO Reviews(id,text,title,rating,reviewdate,user_id,recipe_id) VALUES (903,'This is something you make when you want to learn how to cook but are not concerened about wether it will actually taste good at teh end','Tasted Worse than my grandmother''s meafloaf',3,'2020-6-4',10002,2600);
INSERT INTO Reviews(id,text,title,rating,reviewdate,user_id,recipe_id) VALUES (904,'This recipe needs work. It definately has potential but there were a couple of things in the recipe that I didn''t like. Like for example adding cheese to broccoli was too much for me.','Cheesy Broccoli Recipe Needs Work',4,'2020-6-4',10004,3500);
INSERT INTO Reviews(id,text,title,rating,reviewdate,user_id,recipe_id) VALUES (905,'This was a very average recipe. Exactly what I expected, nothing more, nothing less','Grilled Shrimp Was Decent',5,'2020-6-4',10005,1700);
INSERT INTO Reviews(id,text,title,rating,reviewdate,user_id,recipe_id) VALUES (906,'So incredibally average it is difficult to make a pasta dish that is more average than this average pasta dish. Will win all competitions for being the most average','Very Average Pasta Recipe',5,'2020-6-4',10006,1200);
INSERT INTO Reviews(id,text,title,rating,reviewdate,user_id,recipe_id) VALUES (907,'The complete package deal. There is nothing left when you have finished frying the burgers.','Everything You Want From A Burger',10,'2020-6-4',10007,700);
INSERT INTO Reviews(id,text,title,rating,reviewdate,user_id,recipe_id) VALUES (908,'The most typical of chicken Parms. If you need a recipe and aren''t looking for anything special this is the recipe for you!','Your Typical Chicken Parm',7,'2020-6-4',10008,300);
INSERT INTO Reviews(id,text,title,rating,reviewdate,user_id,recipe_id) VALUES (909,'Certiable bachelor food. This isn''t anything to be proud of but it yields alot of food and makes decent leftovers. Don''t brin this to a party though','Actual Bachelor Food',4,'2020-6-4',10009,1100);
INSERT INTO Reviews(id,text,title,rating,reviewdate,user_id,recipe_id) VALUES (910,'The Perfect Dish for a party. Will get eaten but there will also be enough of it left at the end of the night for you to have some food for the next morning. A crowd favorite','The Kind of Thing You Can Make For A Party',5,'2020-6-4',10005,1300);
