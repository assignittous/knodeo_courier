# index.coffee


config = require('knodeo-configuration').Configuration
config.load 'config.courier.cson'

###
email = require("./lib/email").email

options =
  user: config.current.transports.aitu.user
  password: config.current.transports.aitu.password
  from: "Knodeo <notify@braintapper.com>"
  to: "steven.ng@braintapper.com"
  subject: "Hello"
  text: "Hello world. Check out this spreadsheet"
  attachments: [
    {
        filename: "test.xlsx"
        path: "test.xlsx"
    }
  ]

email.send options
###

# https://api.slack.com/methods/channels.list

slack = require("./lib/slack").slack

options = 
  token: config.current.transports.slack.token
  file: "test.xlsx"
  channels: config.current.transports.slack.channels

slack.send options