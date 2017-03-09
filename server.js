'use strict'

/**
Include required npm modules
**/
var express = require('express');
var mysql = require('mysql');
var bodyParser = require('body-parser');
var connection  = require('express-myconnection');
var config = require('./config.json');

var app = express();
/**
Include file
**/

//MySQL connection setup
app.use(connection(mysql,{
  host     : 'localhost',
  user     : config.username,
  password : config.password,
  database : 'quantinsti_assignment'
},'request')
);

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
    extended: false
}));
app.use(express.static(__dirname + "/Public"));


require('./routes')(app);

//Routing

//Listen on 3000 port
app.listen(3000, function () {
  console.log('Application listening on port 3000');
})

module.exports = app;
