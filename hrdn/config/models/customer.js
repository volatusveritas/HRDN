/* eslint-disable linebreak-style */
/* eslint-disable indent */
/* eslint-disable linebreak-style */
/* eslint-disable eol-last */
const Sequelize = require('sequelize');
const db = require('./db');

const Customer = db.define('customer', {
    id: {
        type: Sequelize.INTEGER,
        autoIncrement: true,
        allowNull: false,
        primaryKey: true,
    },
    name: {
        type: Sequelize.STRING,
        allowNull: false,
    },
    job: {
        type: Sequelize.STRING,
        allowNull: false,
    },
    hiring: {
        type: Sequelize.DATE,
        allowNull: false,
    }
});

//criar tabel fml
Customer.sync();

module.exports = Customer;