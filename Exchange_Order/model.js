'use strict';

var schema = {
exchange_orders: {
    id: {type: 'increments', nullable: false, primary: true},
    timestamp: {type: 'float', nullable: false},
    size: {type: 'integer',  nullable: false, unsigned: true},
    shape: {type: 'integer', nullable: false, unsigned: true},
    status: {type: 'String', nullable: false}
  }
}

module.exports = schema;
