# file_path.coffee
fs = require "fs-extra"
exports.filesystem = {
  send: (options)->
    console.log "copy file to target"
    fs.copy "source","target", (err)->
      console.log "yep"
}