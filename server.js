//Express server generating templates.
var path = require('path');
var express = require('express');
var badyParser = require('body-parser');
var app = express();
var handlebars = require('express-handlebars');
app.engine("handlebars", handlebars({ defaultLayout: 'main' }));
//var port = process.env.PORT || 3000;
//var categoryData = require('./categoryData');
//var recipeData = require('./recipeData');
//var fs = require('fs');

//app.set('view engine', 'handlebars');

//serve css and client.js
//app.use(express.static('public'));

/////////////// MySQL Login /////////////////////
var mySQL = require('mysql');
var connection  = mySQL.createPool({
  	connectionLimit : 10,
	  host		  : 'classmysql.engr.oregonstate.edu',
	  user		  : 'cs340_peterkom',
	  password	: '0179',
	  database	: 'cs340_peterkom'
});

/*
app.get(['/', '/index.html'], function(req, res, next) {
    res.status(202).render('recipePage', {
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

app.get('*', function(req, res) {
  res.status(404).render('404', {});
});
*/

connection.connect(function(err) {
    if(err){
        console.error('error connection: ' + err.stack);
        return;
    }
    console.log('connected as id: ' + connection.threadID);
    console.log(" ---- Connected to MySql Database ----");
});