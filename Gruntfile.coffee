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

        requirejs:
            compile:
                options:
                    baseUrl: 'app/scripts'
                    name: 'app'
                    mainConfigFile: 'app/scripts/common.js'
                    out: 'build/static/scripts/optimized.js'
        clean:
            ['build']

        copy:
            main:
                files:[
                    expand: true
                    dest: 'build/static'
                    cwd: 'app'
                    src: ['*.{html,php}']
                ,
                    expand: true
                    dest: 'build/static/styles'
                    cwd: 'app/stylesheets/'
                    src: ['**/*.css']
                ,
                    expand: true
                    dest: 'build/static/images'
                    cwd: 'app/images/'
                    src: ['**/*.{png,gif,jpg}']
                ]
        usemin:
            # options:
            #     dirs: ['build/static/']
            html: ['build/static/*.html', 'build/static/*.php']
            css: ['build/static/styles/*.css']

        uglify:
            dist:
                files:
                    'build/static/scripts/require.js': ['app/scripts/vendor/requirejs/require.js']


    grunt.loadNpmTasks('grunt-contrib-watch')
    grunt.loadNpmTasks('grunt-contrib-coffee')
    grunt.loadNpmTasks('grunt-contrib-compass')
    grunt.loadNpmTasks('grunt-contrib-requirejs')
    grunt.loadNpmTasks('grunt-contrib-clean')
    grunt.loadNpmTasks('grunt-contrib-copy')
    grunt.loadNpmTasks('grunt-usemin')
    grunt.loadNpmTasks('grunt-contrib-uglify')

    grunt.registerTask('default', ['watch'])
    grunt.registerTask('build', ['clean', 'requirejs', 'coffee', 'compass', 'copy', 'usemin', 'uglify'])


