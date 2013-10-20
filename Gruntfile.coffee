module.exports = (grunt) ->
    'use strict'
    grunt.initConfig
        watch:
            options:
                livereload: true
            scripts:
                files: ['app/coffee/*.coffee']
                tasks: ['clean:scripts', 'coffee:scripts']
            app:
                files: ['app/app.coffee']
                tasks: ['coffee:app']
            styles:
                files: ['app/sass/*.sass', 'app/sass/*.scss']
                tasks: ['compass:watch']
            another:
                files: ['app/*html', 'app/*.php']
            express:
                files: ["app/*.coffee", "app/views/*.html", "app/views/*.jade"]
                tasks: ['express:dev']
                options:
                    nospawn: true

        compass:
            watch:
                config: 'config.rb'
            build:
                options:
                    config: 'config.rb'
                    cssDir: 'build/static/styles/'
                    outputStyle: 'compressed'

        coffee:
            scripts:
                expand: true
                flatten: true
                cwd: 'app/coffee/'
                src: ['*.coffee']
                dest: 'app/scripts/'
                ext: '.js'
            app:
                expand: true
                flatten: true
                cwd: 'app/'
                src: ['app.coffee']
                dest: 'app/'
                ext: '.js'

        requirejs:
            scripts:
                options:
                    mainConfigFile: 'app/scripts/config.js'
                    baseUrl: 'app/scripts'
                    name: 'app'
                    out: 'build/static/scripts/app.js'
                    # dir: 'build/static/scripts/'
                    # modules: [
                    #   name: 'app'
                    #   separateCSS: true
                    #   create: true
                    #   include:[
                    #     'app'
                    #   ]
                    # ,
                    #   name: 'ajax'
                    #   exclude:[
                    #     'common'
                    #   ]
                    # ]
            css:
                options:
                    optimizeCss: 'standard'
                    cssIn: 'app/stylesheets/screen.css'
                    out: 'build/static/styles/screen.css'

        usemin:
            options:
                dirs: ['build/static']
            html: ['build/static/*.{php,html}']
            # html: ['build/static/{footer,header}.php']
            # css: ['build/static/styles/*.css']

        # useminPrepare 未正式使用，可以执行 grunt useminPrepare 看效果。
        useminPrepare:
            options:
                dest: 'build/static/scripts/'
            html: 'app/usemin-test.html'
        clean:
            build:
                ['build', '.tmp/build']
            scripts:
                ['app/scripts/*.js']
        copy:
            main:
                files:[
                    expand: true
                    dest: 'build/static'
                    cwd: 'app'
                    src: ['*.{html,php}']
                ,
                #     expand: true
                #     dest: 'build/static/styles'
                #     cwd: 'app/stylesheets/'
                #     src: ['**/*.css']
                # ,
                    expand: true
                    dest: 'build/static/images'
                    cwd: 'app/images/'
                    src: ['**/*.{png,gif,jpg}']
                ]

        uglify:
            dist:
                files:
                    'build/static/scripts/require.js': ['app/scripts/vendor/requirejs/require.js']
        connect:
            server:
                options:
                    port: 9001
                    base: 'app'
                    open: true
                    # keepalive: true

        express:
            options: {
            # Override defaults here
            }
            dev:
                options:
                   script: "app/app.js"
            prod:
                options:
                   script: "app/app.js"
                   node_env: "production"
            test:
                options:
                   script: "app/app.js"

    grunt.loadNpmTasks('grunt-contrib-watch')
    grunt.loadNpmTasks('grunt-contrib-coffee')
    grunt.loadNpmTasks('grunt-contrib-compass')
    grunt.loadNpmTasks('grunt-contrib-requirejs')
    grunt.loadNpmTasks('grunt-contrib-clean')
    grunt.loadNpmTasks('grunt-contrib-copy')
    grunt.loadNpmTasks('grunt-usemin')
    grunt.loadNpmTasks('grunt-contrib-uglify')
    grunt.loadNpmTasks('grunt-contrib-connect')
    grunt.loadNpmTasks('grunt-express-server')

    grunt.registerTask('build', ['clean:build', 'coffee:scripts', 'compass:build', 'copy', 'requirejs', 'usemin', 'uglify'])
    grunt.registerTask('default', ['watch'])
    grunt.registerTask('server', ['express:dev', 'watch'])

