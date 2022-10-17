/* eslint-disable linebreak-style */
/* eslint-disable indent */
/**
 * CustomersController
 *
 * @description :: Server-side actions for handling incoming requests.
 * @help        :: See https://sailsjs.com/docs/concepts/actions
 */

module.exports = {
    'customers': function(req, res) {
        res.view('customer/customers');
        res.redirect('/');
    },

    'new': function(req, res) {
        res.view('customer/new');
        res.redirect('/');
    },

    'delete': function(req, res){
        res.view('customer/delete');
        res.redirect('/');
    }
};

