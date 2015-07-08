# sftps.coffee

SFTPS = require('sftps')

exports.sftps = {


  send: (options) ->
    sftp = new SFTPS
      host: 'domain.com'
      username: 'Test' 
      password: 'Test'
      port: 22 
    sftp.cd('myDir').addFile(__dirname + '/test.txt').exec(console.log)
}