var SFTPS;

SFTPS = require('sftps');

exports.sftp = {
  send: function(options) {
    var sftps;
    sftps = new SFTPS({
      host: 'domain.com',
      username: 'Test',
      password: 'Test',
      port: 22
    });
    return sftps.cd('myDir').addFile(__dirname + '/test.txt').exec(console.log);
  }
};
