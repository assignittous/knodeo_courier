var logger, nodemailer;

nodemailer = require("nodemailer");

logger = require("knodeo-logger").Logger;

exports.email = {
  send: function(options) {
    var mailOptions, transporter;
    transporter = nodemailer.createTransport({
      service: 'Gmail',
      auth: {
        user: options.credentials.user,
        pass: options.credentials.password
      }
    });
    mailOptions = {
      from: options.message.from,
      to: options.message.to,
      subject: options.message.subject,
      text: options.message.text,
      attachments: options.message.attachments
    };
    return transporter.sendMail(mailOptions, function(err, info) {
      if (err) {
        logger.error("Error sending mail");
        console.log(error);
        return;
      }
      return logger.info("Mail sent: " + info.response);
    });
  }
};
