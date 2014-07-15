/*jslint unparam:true */
module.exports = function (grunt) {
    "use strict";
    grunt.registerTask(
        "gitSha",
        "register the current git information",
        require("./gruntlib/tasks/gitSha.js")(grunt)
    );
    grunt.registerTask('heroku:development', 'gitSha');
};
