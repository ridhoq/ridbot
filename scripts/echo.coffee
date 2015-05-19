module.exports = (robot) ->
    robot.respond /ECHO (.*)$/i, (res) ->
        if res.message.user.name.toLowerCase() == "rid"
            echo = res.match[1]
            res.reply "Senpai noticed me!"
            res.reply echo
        else
            res.reply "You ain't the boss of me, #{res.message.user.name}"



