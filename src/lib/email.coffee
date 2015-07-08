# email.coffee

nodemailer = require "nodemailer"
logger = require("knodeo-logger").Logger

exports.email = {

  send: (envelope)->

    transporter = nodemailer.createTransport
      service: 'Gmail'
      auth:
        user: envelope.user
        pass: envelope.password

    mailOptions = 
      from: envelope.from
      to: envelope.to
      subject: envelope.subject
      text: envelope.text
      attachments: envelope.attachments

    transporter.sendMail mailOptions, (err, info)->
      if err
        logger.error "Error sending mail"
        console.log error
        return
      logger.info "Mail sent: #{info.response}"

}