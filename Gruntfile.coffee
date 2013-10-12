module.exports = (grunt) ->
    'use strict'
    grunt.initConfig
        watch:
            options:
                livereload: true
            scripts:
                files: ['app/coffee/*.coffee']
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
                cwd: 'app/coffee/'
                src: ['*.coffee']
                dest: 'app/scripts/'
                ext: '.js'

        connect:
            server:
                options:
                    port: 9001
                    base: 'app'
                    open: true
                    # keepalive: true

    grunt.loadNpmTasks('grunt-contrib-watch')
    grunt.loadNpmTasks('grunt-contrib-coffee')
    grunt.loadNpmTasks('grunt-contrib-compass')
    grunt.loadNpmTasks('grunt-contrib-connect')

    grunt.registerTask('default', ['connect', 'watch'])

    grunt.registerTask('server', ['connect'])


