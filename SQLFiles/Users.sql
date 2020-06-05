USE cs340_peterkom;
CREATE TABLE Users(
   id         INTEGER  NOT NULL PRIMARY KEY
  ,password   VARCHAR(8) NOT NULL
  ,name       VARCHAR(7) NOT NULL
  ,birth_date DATE  NOT NULL
  ,UNIQUE(id)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO Users(id,password,name,birth_date) VALUES (10000,'m4PJ33Gh','Mildred','1955-07-05');
INSERT INTO Users(id,password,name,birth_date) VALUES (10001,'qLVAjzWf','Jetta','1957-03-12');
INSERT INTO Users(id,password,name,birth_date) VALUES (10002,'JD3N7CEQ','Ulysses','1963-11-24');
INSERT INTO Users(id,password,name,birth_date) VALUES (10003,'DgP2uf5Y','Afton','1971-11-18');
INSERT INTO Users(id,password,name,birth_date) VALUES (10004,'sfWf3MAw','Marilee','1972-01-21');
INSERT INTO Users(id,password,name,birth_date) VALUES (10005,'KM2SN73W','Rory','1975-03-20');
INSERT INTO Users(id,password,name,birth_date) VALUES (10006,'cAc5U3qe','Else','1983-02-18');
INSERT INTO Users(id,password,name,birth_date) VALUES (10007,'3VUCpTqg','Antonio','1999-02-03');
INSERT INTO Users(id,password,name,birth_date) VALUES (10008,'BZ8agSzh','Collene','1999-11-15');
INSERT INTO Users(id,password,name,birth_date) VALUES (10009,'BaGkEM9e','Elmer','2000-02-03');
