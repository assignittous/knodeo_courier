# sftps.coffee

SFTPS = require('sftps')

exports.sftp = {


  send: (options) ->
    sftps = new SFTPS
      host: 'domain.com'
      username: 'Test' 
      password: 'Test'
      port: 22 
    sftps.cd('myDir').addFile(__dirname + '/test.txt').exec(console.log)
}