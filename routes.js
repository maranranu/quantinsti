'use strict';

var exchange_orders = require('./Exchange_Order/route');

var rootRoutes = function(app) {
  app.use('/', exchange_orders);
}

module.exports = rootRoutes;
