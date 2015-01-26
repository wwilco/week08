var express = require('express')
var request = require('request');
var app = express();


var animals = {
  elephant: {
    name: 'Dumbo',
    type: 'Mammal',
    genus: 'Elepha',
    legs: 4
  },
  alligator: {
    name: 'Freddy',
    type: 'Reptile',
    genus: 'Alligator',
    legs: 4
  },
  panda: {
    name: 'Benji',
    type: 'Mammal',
    genus: 'Ailuropoda',
    legs: 4
  },
  lion: {
    name: 'Maxim',
    type: 'Mammal',
    genus: 'Panthera',
    legs: 4
  },
  monkey: {
    name: 'Marco',
    type: 'Mammal',
    genus: 'Homo',
    legs: 2
  },
  koala: {
    name: 'Kai',
    type: 'Mammal',
    genus: 'Phascolarctos',
    legs: 4
  },
  tiger: {
    name: 'George',
    type: 'Mammal',
    genus: 'Panthera',
    legs: 4
  },
  t_rex: {
    name: 'Milton',
    type: 'Dinosaur',
    genus: 'Tyrannosaurus',
    legs: 4
  },
  brown_bear: {
    name: 'Ted',
    type: 'Mammal',
    genus: 'Ursidae',
    legs: 4
  },
  dodo: {
    name: 'Gertrude',
    type: 'Bird',
    genus: 'Raphus',
    legs: 2
  },
  penguin: {
    name: 'Frankie',
    type: 'Bird',
    genus: 'Spheniscidae',
    legs: 2
  }
};

app.get('/animals', function(req, res){
  res.json(animals);
});

app.get('/:type', function(req, res){
  var obj = {name: "sean"};
  var key = "name";
  var value = obj[key]

  var type = req.params.type;
  var arr_of_keys = Object.keys(animals)
  arr_of_keys.forEach(function(key) {
    var animal = animals[key];
    var typeArr = []
    if (type === animal[type]){
      typeArr.push(animal[type]);
    };
    console.log(typeArr);

  });
  res.json({type :type}, {matches :typeArr});
r})

app.listen(3000);
