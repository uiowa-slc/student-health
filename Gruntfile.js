module.exports = function(grunt) {

  var globalConfig = {
    themeDir: 'themes/studenthealth'
  };

  // Project configuration.
  grunt.initConfig({
    globalConfig: globalConfig,
    pkg: grunt.file.readJSON('package.json'),

    sass: {
      dist: {
        files: {
          '<%=globalConfig.themeDir %>/css/app.css' : '<%=globalConfig.themeDir %>/scss/app.scss'
        },                  // Target
        options: {              // Target options
          outputStyle: 'compressed',
          sourceMap: true
        }
      }
    },
    //concat all the files into the build folder includePaths: 

    concat: {
      js:{
        src: [
      '<%=globalConfig.themeDir %>/javascript/jquery.bgiframe.min.js',
      '<%=globalConfig.themeDir %>/javascript/superfish.js',
      '<%=globalConfig.themeDir %>/javascript/supersubs.js',
      '<%=globalConfig.themeDir %>/javascript/supposition.js',
      '<%=globalConfig.themeDir %>/javascript/sftouchscreen.js',
      '<%=globalConfig.themeDir %>/javascript/hoverIntent.js',
      '<%=globalConfig.themeDir %>/javascript/superfish.js',
      '<%=globalConfig.themeDir %>/javascript/jquery-easing.1.2.pack.js',
      '<%=globalConfig.themeDir %>/javascript/jquery-easing-compatibility.1.2.pack.js',
      '<%=globalConfig.themeDir %>/javascript/jquery.coda-slider-2.0.js',
      'division-bar/js/division-bar.js',
      '<%=globalConfig.themeDir %>/javascript/mailchimp.js',
        ],
        dest: '<%=globalConfig.themeDir %>/build/build.src.js'
      }
    },

    //minify those concated files
    //toggle mangle to leave variable names intact

    uglify: {
      my_target:{
        files:{
        '<%=globalConfig.themeDir %>/build/build.js': ['<%=globalConfig.themeDir %>/build/build.src.js'],
        }
      }
    },

    watch: {
      scripts: {
        files: ['<%=globalConfig.themeDir %>/javascript/*.js', '<%=globalConfig.themeDir %>/javascript/**/*.js'],
        tasks: ['concat', 'uglify'],
        options: {
          spawn: true,
        }
      },
      css: {
        files: ['<%=globalConfig.themeDir %>/scss/*.scss',
                '<%=globalConfig.themeDir %>/scss/**/*.scss',
                'division-bar/scss/*.scss'
                ],
        tasks: ['sass'],
        options: {
          spawn: true,
        }
      }
    },

  });

  // Load the plugin that provides the "uglify" task.
  grunt.loadNpmTasks('grunt-contrib-concat');
  grunt.loadNpmTasks('grunt-contrib-uglify');
  grunt.loadNpmTasks('grunt-sass');
  grunt.loadNpmTasks('grunt-contrib-imagemin');
  grunt.loadNpmTasks('grunt-contrib-watch');

  // Default task(s).
  // Note: order of tasks is very important
  grunt.registerTask('default', ['sass', 'concat', 'uglify', 'watch']);

};