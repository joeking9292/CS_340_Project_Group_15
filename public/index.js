function addRecipe () {
  document.getElementById('modal-backdrop').classList.toggle('hidden'); //unhide backdrop
  document.getElementById('add-recipe-modal').classList.toggle('hidden'); //unhide modal
}

function closeModal() {
  document.getElementById('modal-backdrop').classList.toggle('hidden'); //hide backdrop
  document.getElementById('add-recipe-modal').classList.toggle('hidden'); //hide modal

  // reset inputs
  document.getElementById('recipe-name-input').value = '';
  document.getElementById('recipe-photo-input').value = '';
  document.getElementById('recipe-about-input').value = '';
}

window.addEventListener('DOMContentLoaded', function () {
    document.getElementById('add-recipe-button').addEventListener('click', addRecipe);
    document.getElementById('modal-close').addEventListener('click', closeModal);
    document.getElementById('modal-cancel').addEventListener('click', closeModal);
    document.getElementById('modal-name-cancel').addEventListener('click', closeModal);
});


// get value of login
var username = document.getElementsByClassName('username-input');
var password = document.getElementsByClassName('password-input');
var birthdate = document.getElementsByClassName('birth-date-input');
var dataToSend = loginSubmit + " " + password + " " + birthdate;

var loginSubmit = document.getElementsByClassName('submit-button');
var cancel = document.getElementsByClassName('cancel-button');

loginSubmit[0].addEventListener('click', function() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {

      recipes = JSON.parse(xhttp.responseText);
    }
  };
  xhttp.open("POST", "/insertUser", true);
  xhttp.send(dataToSend);
})


cancel[0].addEventListener('click', function() {


})
/* OLD index.js FROM PREVIOUS PROJECT */
/* NOT INTENTED FOR USE IN PROJECT ATM 

function getRecipes(){
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {

      recipes = JSON.parse(xhttp.responseText);
    }
  };
  xhttp.open("GET", "/recipes", true);
  xhttp.send();
}
getRecipes();



function insertRecipe(name, photoURL,recipeURL,ingredients,count){
  var recipeHTML = Handlebars.templates.recipeTemplate({
    name: name,
    photoURL: photoURL,
    recipeURL: recipeURL,
    ingredients: ingredients

  });
  var recipeContainer = document.getElementById("recipe-section");

  recipeContainer.insertAdjacentHTML('beforeend', recipeHTML);
  console.log(recipeContainer);

};



//  checks all the checkboxes to see which ones are clicked. returns recipes containing checked checkboxes
//  in order of how many boxes are checked
function generateRecipes() {


//  hides old recipe cards
if(document.getElementsByClassName('recipe')){
  var elem = document.getElementsByClassName('recipe');
  for(var i = 0; i < elem.length; i++){
    elem[i].hidden = true;
  }
}


  //  all checkboxes
  var boxes = document.getElementsByTagName('input');

  //  string array of checked ingredients
  var checkedIngredients = [];
  var count = 0;


  //  makes array (checkedIngredients) of ingredients checked; subset of boxes
  if(window){
    for(var i = 0; i < boxes.length; i++){
      if(boxes[i].checked){
        checkedIngredients[count] = boxes[i].value;
        count++;
      }
    }
  }

//  alerts user if no boxes are checked
if(checkedIngredients.length == 0){
  alert("Please check a box.");
}

getRecipes();

//  makes recipes array accessible
recipes = recipes["recipes"];




//  array of recipes matching 1 or more ingredients
var checkedRecipes = [];



//  checks for instances where boxes checked match ingredients
//  adds matched recipes to checkedRecipes
for(var i = 0; i < recipes.length; i++){
  for(var j = 0; j < recipes[i].ingredients.length; j++){
    for(var k = 0; k < checkedIngredients.length; k++){
      if(checkedIngredients[k] == recipes[i].ingredients[j].ingredient){
          if(recipes[i].count == 0){
            checkedRecipes[checkedRecipes.length] = recipes[i];
          }
        recipes[i].count++;
      }
    }
  }
}


//  sorts recipes in descending order of number of ingredients matched
for(var i = 0; i <= checkedRecipes.length-1; i++){
  var minIdx = i;
    for(var j = i+1; j < checkedRecipes.length; j++){
      if(checkedRecipes[j].count > checkedRecipes[minIdx].count){
        minIdx = j;
      }
    }
    var temp = checkedRecipes[minIdx];
    checkedRecipes[minIdx] = checkedRecipes[i];
    checkedRecipes[i] = temp;
}


for(var i = 0; i < checkedRecipes.length; i++){
  insertRecipe(checkedRecipes[i].name, checkedRecipes[i].photoURL, checkedRecipes[i].recipeURL,checkedRecipes[i].ingredients,0);
}





}








window.addEventListener('DOMContentLoaded', function(){

  if(document.getElementById("generate-recipes")){
    var getRecipesButton = document.getElementById("generate-recipes");
    getRecipesButton.addEventListener("click", function(){
      generateRecipes();
      document.getElementById('recipe-section').scrollIntoView();
    });
  }





});


*/