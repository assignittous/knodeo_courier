var Slack, fs, logger;

Slack = require('node-slack-upload');

fs = require("fs-extra");

logger = require("knodeo-logger").Logger;

exports.slack = {
  send: function(options) {
    var slack;
    console.log(options);
    slack = new Slack(options.token);
    return slack.uploadFile({
      file: fs.createReadStream(options.file),
      title: options.file,
      initialComment: 'no you come on',
      channels: options.channels
    }, function(err) {
      if (err) {
        console.error(err);
      } else {
        logger.info("Slack message sent");
      }
    });
  }
};
