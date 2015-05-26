var app = require('express')();
var server = require('http').Server(app);
var io = require('socket.io')(server);
var redis = require('redis').createClient();
redis.subscribe('rubyonrails');

app.use(function(req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
  next();
});
server.listen(8080);

app.get('/', function (req, res) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
  res.sendfile(__dirname + '/index.html');
});

io.on('connection', function(socket){
  console.log("connected!!");
  redis.on('message', function(channel, message){
    console.log(message);
    socket.emit('rubyonrails', JSON.parse(message));

  });
});