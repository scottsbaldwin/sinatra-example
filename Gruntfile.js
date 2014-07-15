/*jslint unparam:true */
module.exports = function (grunt) {
    "use strict";
    grunt.loadNpmTasks("grunt-contrib-clean");
    grunt.initConfig({
        clean: require("./gruntlib/config/clean.js")
    });
    grunt.registerTask('heroku:development', 'clean');
};
