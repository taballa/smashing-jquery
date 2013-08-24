module.exports = (grunt) ->
    'use strict'
    grunt.initConfig
        watch:
            options:
                livereload: true
            scripts:
                files: ['app/scripts/*.coffee']
                tasks: ['coffee']
            styles:
                files: ['app/sass/*.sass', 'app/sass/*.scss']
                tasks: ['compass']
            another:
                files: ['app/*html', 'app/*.php']

        compass:
            dist:
                option:
                    config: 'config.rb'
        coffee:
            glob_to_multiple:
                expand: true
                flatten: true
                cwd: 'app/scripts/'
                src: ['*.coffee']
                dest: 'app/scripts/'
                ext: '.js'

    grunt.loadNpmTasks('grunt-contrib-watch')
    grunt.loadNpmTasks('grunt-contrib-coffee')
    grunt.loadNpmTasks('grunt-contrib-compass')

    grunt.registerTask('default', ['watch'])

