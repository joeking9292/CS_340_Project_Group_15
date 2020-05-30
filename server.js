var path = require('path');
var express = require('express');
var exphbs = require('express-handlebars');
var app = express();
var port = process.env.PORT || 3500;

var postData = require('./recipeData');

app.engine('handlebars', exphbs({ defaultLayout: 'main' }));
app.set('view engine', 'handlebars');

app.use(express.static('public'));

app.get(['/', '/index.html'], function(req, res, next) {
    res.status(200).render('recipePage', {
        recipe: recipeData
    })
});

app.get('/posts/:number', function (req, res, next) {
    var number = req.params.number;
    if ((recipeData.length-1) < number) {
        res.status(404).render('404', {});
    } else {
        res.status(200).render('partials/recipesCard', recipeData[number]);
    }
  });

app.get('*', function(req, res) {
    res.status(404).render('404', {});
});

app.listen(port, function() {
    console.log("== Server is listening on port", port);
});