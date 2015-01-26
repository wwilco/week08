var express = require('express');
var app = express();

var names = ['joe', 'jane', 'john', 'jill', 'jeff'];
var towns = ['nyc', 'bk', 'chitown', 'beantown', 'the sewars'];
var bdays = ['11/11/12', '1/3/24', '3/21/03', '3/4/98', '12/5/90'];
var person;

var rand_name = names[Math.floor(Math.random() * names.length)];
var rand_town = towns[Math.floor(Math.random() * towns.length)];
var rand_bday = bdays[Math.floor(Math.random() * bdays.length)];

app.get ('/', function(req, res){ //get request from the browser
  person = {
    name: rand_name,
    last: rand_town,
    bday: rand_bday
  }
  res.send(person);
});

app.listen(3000);



// app.get('/', function(req, res) {
//
//   person = {
//     name: rand_name,
//     last: rand_town,
//     bday: rand_bday
//   }
//   res.send(person);
