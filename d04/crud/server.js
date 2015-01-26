var express = require('express');
var app = express();
var request = require('request');


var all_pets = [
  {name:"chili", type:"dog"},
  {name:"charlie", type:"squirrel"}
];


app.get('/create/:pet_name/:pet_type', function(req, res){
  var name = req.params.pet_name;
  var type = req.params.pet_type;
  all_pets.push({name: name, type: type});

  res.json({"status": "Success!"});
})

app.get('/read/:pet_name', function(req,res){
  var name = req.params.pet_name;

  for (var i = 0; i < all_pets.length; i++){
    var find = all_pets[i]['name'];
    if (find === name){
      res.json(all_pets[i]);
    }
  }
})

app.get('/update/:pet_name/:new_pet_name', function(req,res){
  var name = req.params.pet_name;
  var newname = req.params.new_pet_name;

  res.json(test);
})

app.get('/destroy/:pet_name', function(req,res){
  var name = req.params.pet_name;

  res.json(test);
})

app.get('/all_pets', function(req,res){
  res.json(all_pets);
})

app.listen(3000);
