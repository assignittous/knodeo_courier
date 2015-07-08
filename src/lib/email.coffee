# email.coffee

nodemailer = require "nodemailer"
logger = require("knodeo-logger").Logger

exports.email = {

  send: (options)->

    transporter = nodemailer.createTransport
      service: 'Gmail'
      auth:
        user: options.credentials.user
        pass: options.credentials.password

    mailOptions = 
      from: options.message.from
      to: options.message.to
      subject: options.message.subject
      text: options.message.text
      attachments: options.message.attachments

    transporter.sendMail mailOptions, (err, info)->
      if err
        logger.error "Error sending mail"
        console.log error
        return
      logger.info "Mail sent: #{info.response}"

}