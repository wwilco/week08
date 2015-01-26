//answer

var express = require('express');
var request = require('request');

var app = express();

app.get('/', function(req, res) {
  var url = 'http://api.randomuser.me/';
  var personJSON;

  request(url, function(error, response, body) {
    if(!error && response.statusCode === 200) {
      var data = JSON.parse(body);
      var person = data['results'][0]['user'];
      personJSON = {
        firstName: person['name']['first'],
        lastName: person['name']['last'],
        email: person['email'],
        username: person['username']
      };
      res.json(personJSON);
    }
  });
});

var server = app.listen(3000, function() {
  console.log('Server is listening on port 3000');
});

// var request = require('request');
// var express = require('express')
//
// var app = express();
//
// app.get('/', function(request, response) {
//   var url = "http://api.randomuser.me/";
//   var person_json;
//
//   request (url, function(error, response, body){ //what if theres an arror, what if theres a response, body is the format, in this case, its json
//     if (!error && response.statusCode === 200){ //200 means status code = success
//       var data = JSON.parse(body);
//       var person = data['results'][0]['user'];
//       person_json = {
//         first: person["name"]["first"],
//         last: person["name"]["first"],
//         email: person["email"],
//         username: person["username"]
//       }
//       res.json(person_json);
//       // console.log(data.results[0].user.name.first);
//     }
//   });
// })
//
// var server = app.listen(3000, function(){
//   console.log("server running on 3000");
// });
