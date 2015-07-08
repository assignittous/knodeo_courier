var Slack;

Slack = require('node-slack-upload');

exports.slack = {
  send: function(options) {
    var slack;
    slack = new Slack(token);
    return slack.uploadFile({
      file: fs.createReadStream(path.join(__dirname, '..', 'README.md')),
      filetype: 'post',
      title: 'README',
      initialComment: 'my comment',
      channels: 'XXXXX'
    }, function(err) {
      if (err) {
        console.error(err);
      } else {
        console.log('done');
      }
    });
  }
};
