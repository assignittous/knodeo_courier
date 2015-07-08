var config, email, options, slack;

config = require('knodeo-configuration').Configuration;

config.load('config.courier.cson');

email = require("./lib/email").email;

slack = require("./lib/slack").slack;


/*


options = config.current.transports.aitu

email.send options
 */

options = config.current.transports.slack;

slack.send(options);
