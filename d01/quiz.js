var express = require ('express');
var app = express();

app.get ('/salad', function(req, res){ //get request from the browser
  res.json({
    name: "Basic Salad",
    ingredients: ["lettuce", "tomatos", "chicken", "cheese", "croutons"]
    });
});

app.listen(3000);
