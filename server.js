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

app.get('/index.html', function (req, res, next) {
  res.status(200).render("profilePage", {});
})

app.get(['/recipes.html'], function(req, res, next) {
    res.status(200).render('recipePage', {
      recipes : recipeData
    })
});

app.get('/recipe/:number', function (req, res, next) {
  var number = req.params.number;
  if ((recipeData.length-1) < number) {
      res.status(404).render('404', {});
  } else {
      res.status(200).render('partials/recipeTemplate', postData[number]);
  }
});

app.get('/login.html', function (req, res, next) {
  res.status(200).render("loginPage", {});
})

app.get('*', function(req, res) {
  res.status(404).render('404', {});
});


//////////// App listen on port ////////////////

app.listen(port, function() {
    console.log('App listening on port: ' + port);
});