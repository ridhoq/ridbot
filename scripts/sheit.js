'use strict';
module.exports = function(robot) {
  robot.hear(/s{1,}h{1,}e{1,}i{1,}t{1,}/, function(res){
    res.send('https://www.youtube.com/watch?v=NOU7MdkwyOk');
  });
};
