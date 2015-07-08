var fs;

fs = require("fs-extra");

exports.filesystem = {
  send: function(options) {
    console.log("copy file to target");
    return fs.copy("source", "target", function(err) {
      return console.log("yep");
    });
  }
};
