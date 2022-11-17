/* eslint-disable linebreak-style */
/**
 * Route Mappings
 * (sails.config.routes)
 *
 * Your routes tell Sails what to do each time it receives a request.
 *
 * For more information on configuring custom routes, check out:
 * https://sailsjs.com/anatomy/config/routes-js
 */

module.exports.routes = {
  '/': { view: 'home' },
  '/home': { view: 'home' },
  '/homepage': { view: 'home' },
  '/customers/list': { view: 'customer/list'},
  '/customers/add': { view: 'customer/add'}
};
