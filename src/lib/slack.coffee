Slack = require('node-slack-upload')
fs = require "fs-extra"
logger = require("knodeo-logger").Logger

exports.slack = {

  send: (options)->
    slack = new Slack(options.token)
    file = 
      file: fs.createReadStream(options.file)
      title: options.file
      initialComment: options.comment
      channels: options.channels      
      
    slack.uploadFile file, (err) ->
      if err
        logger.error "Slack upload failed"
        console.error err
      else
        logger.info "Slack message sent"
      return    
}