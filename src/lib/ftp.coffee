# ftp.coffee

Client = require('ftp')
fs = require('fs')

exports.ftp = {

  send: (options)->

    connectOptions = 
      host: ""
      port: 00
      secure: false
      user: ""
      password: ""
      

    c = new Client
    c.on 'ready', ->
      c.put 'foo.txt', 'foo.remote-copy.txt', (err) ->
        if err
          throw err
        c.end()
        return
      return
    # connect to localhost:21 as anonymous 
    c.connect()    
}
