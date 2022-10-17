/* eslint-disable linebreak-style */
/**
 * Default model settings
 * (sails.config.models)
 *
 * Your default, project-wide model settings. Can also be overridden on a
 * per-model basis by setting a top-level properties in the model definition.
 *
 * For details about all available model settings, see:
 * https://sailsjs.com/config/models
 *
 * For more general background on Sails model settings, and how to configure
 * them on a project-wide or per-model basis, see:
 * https://sailsjs.com/docs/concepts/models-and-orm/model-settings
 */

module.exports.models = {

  schema: true,
  migrate: 'alter',
  attributes: {
    id: { type: 'number', autoIncrement: true, },
    name: {type: 'string', required: true, },
    job: {type: 'string', required: true, },
    hiring: {type: 'datetime', required: true, }
  },

  dataEncryptionKeys: {
    default: 'wsdDC+BbrWwZrNxYzJ2bdbTCca9IVlQ9oV2WvXB4Kqw='
  },

  cascadeOnDestroy: true

};
