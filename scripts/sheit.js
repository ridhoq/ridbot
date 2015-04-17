'use strict';
module.exports = function(robot) {
  robot.hear(/s+?h+?e+?i+?t/ig, function(res) {
    res.send('https://www.youtube.com/watch?v=NOU7MdkwyOk');
  });
};
