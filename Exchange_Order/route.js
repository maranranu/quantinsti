'use strict'

//Import modules
var controller = require('./controller');
var express = require('express');
var router = express.Router()

//API routing
router.get('/showAll', controller.getAllStatus);
router.post('/store', controller.StoreInstrument);
router.get('/instrument/:id', controller.getInstrumentById);

//app.get('/', controller.getStatus);

module.exports = router;
