module.exports = function(grunt) {
    "use strict";

    grunt.initConfig({

        less: {
            styles: {
                options: {
                    compress: false,
                },
                files: {
                    "style.css": "less/style.less",
                }
            }
        },
    });


    grunt.loadNpmTasks('grunt-contrib-less');

    grunt.registerTask("default", ["less:styles"]);
};