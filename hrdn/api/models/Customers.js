/* eslint-disable no-trailing-spaces */
/**
 * Customers.js
 *
 * @description :: A model definition represents a database table/collection.
 * @docs        :: https://sailsjs.com/docs/concepts/models-and-orm/models
 */

module.exports = {
  
  attributes: {

    id: { type: 'number', autoIncrement: true, },
    name: {type: 'string', required: true},
    job: {type: 'string', required: true},
    hiring: {type: 'string', columnType: 'date', required: true, }

  },

};

