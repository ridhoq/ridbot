# Description
#   hubot scripts for diagnosing hubot
#
# Commands:
#   hubot ping - Reply with pong
#   hubot adapter - Reply with the adapter
#   hubot echo <text> - Reply back with <text> only if you're rid
#   hubot time - Reply with current time
#
# Author:
#   Josh Nichols <technicalpickles@github.com>

module.exports = (robot) ->
  robot.respond /PING$/i, (msg) ->
    msg.send "PONG"

  robot.respond /ADAPTER$/i, (msg) ->
    msg.send robot.adapterName

  robot.respond /ECHO (.*)$/i, (res) ->
    if res.message.user.name.toLowerCase() == "rid"
        echo = res.match[1]
        res.send echo
    else
        res.reply "You ain't the boss of me"
        
  robot.respond /DECHO (.*)$/i, (res) ->
    if res.message.user.name.toLowerCase() == "rid"
        echo = res.match[1]
        res.send echo
        res.send echo
    else
        res.reply "You ain't the boss of me"
        
  robot.respond /([0-9]*)ECHO (.*)$/i, (res) ->
    if res.message.user.name.toLowerCase() == "rid"
        n = res.match[0]
        echo = res.match[2]
        res.send n
        res.send echo
    else
        res.reply "You ain't the boss of me"

  robot.respond /TIME$/i, (msg) ->
    msg.send "Server time is: #{new Date()}"
