var express = require ('express');
var app = express();

app.get ('/', function(req, res){ //get request from the browser
  res.json({msg: "hello worldz!!"});
});

app.listen(3000);
