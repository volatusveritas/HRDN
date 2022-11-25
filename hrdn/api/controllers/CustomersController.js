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

    list: async function(req, res) {
        await Customers.find({}).exec(function(err, customers){
            if(err){
                res.send(500, {error: 'Não deu dale'});
            }
            res.view('customer/list', {customers:customers});
        });
    },

    add:function(req, res){
        res.view('customer/add');
    },

    create: async function(req, res) {

        await Customers.create({
          name: req.body.name, mail: req.body.mail,
          rhdmail: req.body.rhdmail, cpf: req.body.cpf,
          phone: req.body.phone, date: req.body.date,
          adress: req.body.adress, wage: req.body.wage,
          job: req.body.job, hiring: req.body.hiring
        }).exec(function(err){
            if(err){
                res.send(500, {error: 'Nada dale'});
            }

            res.redirect('/customers/list');
        });
    },

    delete: async function(req, res){
        await Customers.destroy({id:req.body.id}).exec(function(err){
            if(err){
                res.send(500, {error: 'Nada dale'});
            }

            res.redirect('/customers/list');
        });

        return false;
    },

    edit: async function(req, res){
        await Customers.findOne({id:req.body.id}).exec(function(err, customer){
            if(err){
                res.send(500, {error: 'Nada dale'});
            }

            res.view('customer/edit', {customer:customer});
        });
    },
    update: async function(req, res){

        data = new Date(req.body.hiring);

        await Customers.update({id:req.body.id}).set({
          name: req.body.name, mail: req.body.mail,
          rhdmail: req.body.rhdmail, cpf: req.body.cpf,
          phone: req.body.phone, date: req.body.date,
          adress: req.body.adress, wage: req.body.wage,
          job: req.body.job, hiring: req.body.hiring
        }).exec(function(err){
            if(err){
                res.send(500, {error: 'Nada dale'});
            }

            res.redirect('/customers/list');
        });

        return false;
    }
};

