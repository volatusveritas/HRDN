/* eslint-disable linebreak-style */
/* eslint-disable no-trailing-spaces */
/* eslint-disable no-unused-vars */
/* eslint-disable curly */
/* eslint-disable prefer-arrow-callback */
/* eslint-disable linebreak-style */
/* eslint-disable indent */
/**
 * CustomersController
 *
 * @description :: Server-side actions for handling incoming requests.
 * @help        :: See https://sailsjs.com/docs/concepts/actions
 */

module.exports = {

    list:function(req, res) {
        Customers.find({}).exec(function(err, customers){
            if(err){
                res.send(500, {error: 'Não deu dale'});
            }
            res.view('list', {customers:customers});
        });
    },

    add:function(req, res){
        res.view('add');
    },

    create:function(req, res) {
        var name = req.body.name;
        var job = req.body.job;
        var hiring = req.body.hiring;

        Customers.create({name:name, job:job, hiring:hiring}).exec(function(err){
            if(err){
                res.send(500, {error: 'Nada dale'});
            }

            res.redirect('/customers/list');
        });
    },

    delete: function(req, res){
        Customers.destroy({id:req.params.id}).exec(function(err){
            if(err){
                res.send(500, {error: 'Nada dale'});
            }

            res.redirect('/customers/list');
        });

        return false;
    },
    edit: function(req, res){
        Customers.findOne({id:req.params.id}).exec(function(err, customer){
            if(err){
                res.send(500, {error: 'Nada dale'});
            }

            res.view('edit', {customer:customer});
        });
    },
    update: function(req, res){
        var name = req.body.name;
        var job = req.body.job;
        var hiring = req.body.hiring;

        Customers.update({id: req.params.id},{name:name, job:job, hiring:hiring}).exec(function(err){
            if(err){
                res.send(500, {error: 'Nada dale'});
            }

            res.redirect('/customers/list');
        });

        return false;
    }
};

