/* eslint-disable linebreak-style */
/* eslint-disable no-trailing-spaces */
/**
 * Customers.js
 *
 * @description :: A model definition represents a database table/collection.
 * @docs        :: https://sailsjs.com/docs/concepts/models-and-orm/models
 */

module.exports = {
  attributes: {

    name: {type: 'string', required: true},
    mail: {type: 'string', required: true},
    rhdmail: {type: 'string', required: true},
    cpf: {type: 'string', required: true},
    phone: {type: 'string', required: true},
    date: {type: 'string', required: true},
    adress: {type: 'string', required: true},
    wage: {type: 'string', required: true},
    job: {type: 'string', required: true},
    hiring: {type: 'string', required: true}


  },

};

