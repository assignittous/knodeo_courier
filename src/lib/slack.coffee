Slack = require('node-slack-upload')
fs = require "fs-extra"
logger = require("knodeo-logger").Logger

exports.slack = {

  send: (options)->
    console.log options
    slack = new Slack(options.token)
    slack.uploadFile {
      file: fs.createReadStream(options.file)
      title: options.file
      initialComment: 'no you come on'
      channels: options.channels
    }, (err) ->
      if err
        console.error err
      else
        logger.info "Slack message sent"

      return    
}