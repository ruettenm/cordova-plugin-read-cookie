
var exec = require('cordova/exec');

var PLUGIN_NAME = 'ReadCookiePlugin';

var ReadCookiePlugin = {
  getCookie: function(cookieName, cb) {
    exec(cb, null, PLUGIN_NAME, 'getCookie', [ cookieName ] );
  }
};

module.exports = ReadCookiePlugin;
