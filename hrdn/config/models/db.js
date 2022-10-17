/* eslint-disable linebreak-style */
const Sequelize = require('sequelize');

const db = new Sequelize('hrdn', 'root', 'java@123', {
  host: 'localhost',
  dialect: 'mysql'
});

db.authenticate()
.then(() => {
  console.log('Dale no db');
}).catch(() => {
  console.log('Não deu dale no db');
});

module.exports = db;
