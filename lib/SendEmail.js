var exec = require('child_process').exec

module.exports = function(options, callback) {
  if (!options.emailUserName) {
    var cmd = 'echo "' + options.message + '" | mail -s "' + options.subject + '" ' + options.emailTo 
  }
  else {
    var cmd = 'echo "' + options.message + '" | mailx -v -r "' + options.emailFrom + '" -s "' + options.subject + '" -S smtp="' + options.emailServer + '" -S smtp-use-starttls -S smtp-auth=login -S smtp-auth-user="' + options.emailUserName + '" -S smtp-auth-password="' + options.emailPassword + '" -S ssl-verify=ignore ' + options.emailTo 
  }
  exec(cmd)
}
