module.exports = (robot) ->
    robot.respond /^echo\s+(.*)$/, (res) ->
        if res.message.user.name.toLowerCase() == "rid"
            echo = res.match[1]
            res.reply echo
        else
            res.reply "You ain't the boss of me, #{res.message.user.name}"



