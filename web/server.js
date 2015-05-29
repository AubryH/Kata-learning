console.log("démarrage du serveur web");
var port="6842";

var express = require('express');

var server = express();
var app = express.Router();

var logs_activated = true;

app.use(function(req, res, next) {
  if(logs_activated = true){
    console.log('%s %s', req.method, req.url);
  }
  next();
});


process.on('uncaughtException', function (err) {
    console.log(err);
});

app.get('/', function (request, response){
    response.sendFile('index.html', { root: '.'});
});

app.get('/main.css', function (request, response){
    response.sendFile('main.css', { root: './css'});
});

server.use('', app);
server.listen(port);
console.log("serveur ecoute sur le port " + port);
