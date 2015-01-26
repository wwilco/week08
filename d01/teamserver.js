var express = require('express');
var app = express();

var city = {
  nyc: ["rangers", "giants", "mets", "knicks", "jets"],
  la: ["kings", "lakers", "angels", "clippers", "dodgers"],
  chi: ["bulls", "cubs", "bears", "blackhawks"]
}
console.log(city[Math.floor(Math.random() * city.length)]);

app.get ('/', function(req, res){ //get request from the browser
  res.send(city);
});

app.listen(3000);
