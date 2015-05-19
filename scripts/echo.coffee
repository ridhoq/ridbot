module.exports = (robot) ->
    robot.respond /ECHO (.*)$/i, (res) ->
        if res.message.user.name.toLowerCase() == "rid"
            echo = res.match[1]
            res.send "Senpai noticed me!"
            res.send echo
            return
        else
            res.reply "You ain't the boss of me"



