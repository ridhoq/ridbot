module.exports = (robot) ->
  robot.hear /s+h+e+i+t/i, (res) ->
    res.send('https://www.youtube.com/watch?v=NOU7MdkwyOk');
