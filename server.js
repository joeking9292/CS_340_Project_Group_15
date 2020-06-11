var path = require('path');
var express = require('express');
var badyParser = require('body-parser');
var app = express();
var handlebars = require('express-handlebars');
app.engine("handlebars", handlebars({ defaultLayout: 'main' }));
app.set('view engine', 'handlebars');
//serve css and client.js
app.use(express.static('public'));

var port = process.env.PORT || 3000;
var fs = require('fs');


/////////////// MySQL Login /////////////////////
var mySQL = require('mysql');
var connection  = mySQL.createConnection({
  	connectionLimit : 10,
	  host		  : 'classmysql.engr.oregonstate.edu',
	  user		  : 'cs340_peterkom',
	  password	: '0179',
	  database	: 'cs340_peterkom'
});

connection.connect(function(err) {
  if(err){
      console.error('error connection: ' + err.stack);
      return;
  }
  console.log('connected as id: ' + connection.threadID);
  console.log(" ---- Connected to MySql Database ----");
});

////////////////// Rendering Pages ////////////////////

app.get(['/', '/index.html'], function (req, res, next) {
  console.log("Inside the U Page. D A T A:");
  var recipesSQL = "SELECT * from Users";
  
  connection.query(recipesSQL, function(error, results, fields) {
    if (error) {
      throw error;
    }
    console.log(results);
    res.status(200).render('profilePage', {
      profile : results
    });
  });
});

app.get(['/recipes.html'], function(req, res, next) {
  console.log("Inside the Recipes Page. D A T A:");
  var recipesSQL = "SELECT * from Recipes";
  
  connection.query(recipesSQL, function(error, results, fields) {
    if (error) {
      throw error;
    }
    console.log(results);
    res.status(200).render('recipePage', {
      recipes : results
    });
  });
});

/*
app.get('/recipe/:number', function (req, res, next) {
  var number = req.params.number;
  if ((recipeData.length-1) < number) {
      res.status(404).render('404', {});
  } else {
      res.status(200).render('partials/recipeTemplate', postData[number]);
  }
});*/

app.get('/login.html', function (req, res, next) {
  res.status(200).render("loginPage", {});
});

app.get('/insertUser', function (req, res, next) {
  console.log(res);
  console.log(req);
  var loginSQL = "INSERT INTO User (name, password, birth_date)";
  var inserts = [res.body.password, res.body.name, res.body.birth_date];
  mySQL.connection.query(loginSQL, inserts, function(error, results, fields){
    if(error){
        console.log(JSON.stringify(error));
        res.write(JSON.stringify(error));
        res.end();
    }
  });
});

app.get('*', function(req, res) {
  res.status(404).render('404', {});
});


//////////// App listen on port ////////////////

app.listen(port, function() {
    console.log('App listening on port: ' + port);
});