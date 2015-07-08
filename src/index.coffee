# index.coffee


config = require('knodeo-configuration').Configuration
config.load 'config.courier.cson'


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