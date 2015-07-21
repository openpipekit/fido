var nodemailer = require('nodemailer')
var exec = require('child_process').exec

module.exports = function(options, callback) {
  if (!options.userName) {
    exec('mail -s "' + options.subject + '" ' + options.to + ' <<< "' + options.message + '"')  
  }
  else {
    var smtpTransport = nodemailer.createTransport("SMTP",{
      service: "Gmail",
        auth: {
          user: options.userName,
          pass: options.password
        }
      }
    )
    smtpTransport.sendMail({
        to : options.to,
        from : options.userName,
        subject : options.subject,
        text: options.message,
      }, 
      function(err, res) { 
        callback(err, res)
      }
    )
  }
}
