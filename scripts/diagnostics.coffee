# Description
#   hubot scripts for diagnosing hubot
#
# Commands:
#   hubot ping - Reply with pong
#   hubot adapter - Reply with the adapter
#   hubot echo <text> - Reply back with <text>
#   hubot time - Reply with current time
#
# Author:
#   Josh Nichols <technicalpickles@github.com>

module.exports = (robot) ->
  robot.respond /PING$/i, (msg) ->
    msg.send "PONG"

  robot.respond /ADAPTER$/i, (msg) ->
    msg.send robot.adapterName

  robot.respond /ECHO (.*)$/i, (msg) ->
    if res.message.user.name.toLowerCase() == "rid"
        echo = res.match[1]
        res.send "Senpai noticed me!"
        res.send echo
        return
    else
        res.reply "You ain't the boss of me"

  robot.respond /TIME$/i, (msg) ->
    msg.send "Server time is: #{new Date()}"
