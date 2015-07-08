var logger, nodemailer;

nodemailer = require("nodemailer");

logger = require("knodeo-logger").Logger;

exports.email = {
  send: function(envelope) {
    var mailOptions, transporter;
    transporter = nodemailer.createTransport({
      service: 'Gmail',
      auth: {
        user: envelope.user,
        pass: envelope.password
      }
    });
    mailOptions = {
      from: envelope.from,
      to: envelope.to,
      subject: envelope.subject,
      text: envelope.text,
      attachments: envelope.attachments
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
