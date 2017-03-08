'use strict'

//Import modules
var mysql = require('mysql');
var _ = require('underscore');
var model = require('./model');
var controller = {};

//API to get data by instrument
controller.getInstrumentById = function(req, res) {
  console.log("Inside get instrument by id");
  var id = req.params.id;
  //mysql query and connection
  req.getConnection(function(err,connection){
    //Get data from table by id
  connection.query('SELECT * FROM exchange_orders WHERE instrument = ? ORDER BY timestamp DESC',[id], function(err, rows, fields) {
    if (err) {
      return res.send(err);
    }
    //If instrument id doesn't exists in database
    if (rows.length == 0) {
      res.statusCode = 404;
      return res.send("Instrument doesn't exists");
    }
    return res.send(rows)
  });
});
}

//API for get status of all instruments
controller.getAllStatus = function(req, res) {
  //mysql query and connection
  req.getConnection(function(err,connection){
    //Get all data in descending order of timestamp
  connection.query('SELECT * FROM exchange_orders ORDER BY timestamp DESC', function(err, rows, fields) {
    if (err) {
      return res.send(err);
    }
    return res.send(rows)
  });
});
}

//API for store data and parse line data into required form
controller.StoreInstrument = function(req, res) {
  var input = req.body.line;
  input = input.split(":");
  var inp = input[1].split("|");
  //Data object for fields to be added in mysql table
  var data = {
    timestamp: parseFloat(input[0]),
    instrument: 0,
    size: 0,
    side: 0,
    status: ""
  }

  //Parsing: get 48, 32 and 54 key values, others are irrelevant fields
  _.forEach(inp, function(value) {
    if (value.match('48=') != null) {
      data.instrument = parseInt(value.split("=")[1])
    }
    if (value.match('32=') != null) {
      data.size = parseInt(value.split("=")[1])
    }
    if (value.match('54=') != null) {
      data.side = parseInt(value.split("=")[1])
      data.status = data.side == 1 ? "bought" : "sold"
    }
  })
  //mysql query and connection
  req.getConnection(function (err, connection) {
    //Insert data object into mysql table
      connection.query("INSERT INTO exchange_orders set ? ",data, function(error, rows) {
        if (error) {
          return res.send(error);
        }
        return res.send({
          "success": true,
          "message": "New data is inserted"
        })
  });
});
}
module.exports = controller;
