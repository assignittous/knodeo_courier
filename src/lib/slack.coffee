Slack = require('node-slack-upload')


exports.slack = {

  send: (options)->
    slack = new Slack(token)
    slack.uploadFile {
      file: fs.createReadStream(path.join(__dirname, '..', 'README.md'))
      filetype: 'post'
      title: 'README'
      initialComment: 'my comment'
      channels: 'XXXXX'
    }, (err) ->
      if err
        console.error err
      else
        console.log 'done'
      return    
}