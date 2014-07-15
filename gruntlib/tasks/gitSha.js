module.exports = function (grunt) {
    "use strict";
    return function () {
        var done = this.async();
        grunt.log.write("Current git SHA: ");
        grunt.util.spawn({
            cmd : "git",
            args : [ "describe", "--tags", "--always", "--long", "--dirty" ]
        }, function (err, result) {
            if (err) {
                grunt.log.error(err);
                return done(false);
            }
            grunt.config("meta.revision", result);
            grunt.log.writeln(result);
            done(result);
        });
    };
};