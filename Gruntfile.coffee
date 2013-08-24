module.exports = (grunt) ->
    'use strict'
    grunt.initConfig
        watch:
            options:
                files: ['app/scripts/*.coffee', 'app/sass/*.sass', 'app/sass/*.scss', 'app/*.html', 'app/*.php']
                livereload: true
            scripts:
                files: ['app/scripts/*.coffee', 'app/sass/*.sass', 'app/sass/*.scss']
                tasks: ['compass', 'coffee']

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


