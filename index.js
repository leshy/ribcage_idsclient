// Generated by LiveScript 1.4.0
(function(){
  var Backbone, idsclient, _;
  Backbone = require('backbone4000');
  idsclient = require('idsclient').idsclient;
  _ = require('underscore');
  exports.lego = Backbone.Model.extend4000({
    after: ['logger'],
    init: function(callback){
      this.settings = _.extend({
        host: 'localhost',
        port: 12312,
        logger: this.env.logger
      }, this.settings);
      this.idsclient = this.env.idsclient = new idsclient(this.settings);
      this.env.ids = this.idsclient.send.bind(this.idsclient);
      return callback();
    }
  });
}).call(this);
