var SFTPS;

SFTPS = require('sftps');

exports.sftps = {
  send: function(options) {
    var sftp;
    sftp = new SFTPS({
      host: 'domain.com',
      username: 'Test',
      password: 'Test',
      port: 22
    });
    return sftp.cd('myDir').addFile(__dirname + '/test.txt').exec(console.log);
  }
};
