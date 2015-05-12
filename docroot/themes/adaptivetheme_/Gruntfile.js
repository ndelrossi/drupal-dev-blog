module.exports = function(grunt) {
	grunt.initConfig({
		pkg: grunt.file.readJSON('package.json'),
		compass: {
			uikit: {
				options: {
          config: 'styles/uikit/config.rb',
          basePath: 'styles/uikit',
          bundleExec: true
				}
			},
			layout: {
				options: {
          config: 'layout/site-builder/config.rb',
          basePath: 'layout/site-builder',
          bundleExec: true
				}
			}
		},
		autoprefixer: {
      css: {
        src: 'styles/css/components/**.css',
        options: {
          map: true
        }
      }
		},
    csslint: {
      options: {
        csslintrc: '.csslintrc'
      },
      strict: {
        options: {
          import: 2
        },
        src: ['styles/css/components/**.css']
      }
    },
		watch: {
			uikit: {
				files: 'styles/uikit/components/**/*.scss',
				tasks: ['compass:uikit', 'autoprefixer:css']
			},
			layout: {
				files: 'layout/site-builder/sass/**/*.scss',
				tasks: ['compass:layout']
			}
		}
	});
	grunt.loadNpmTasks('grunt-autoprefixer');
	grunt.loadNpmTasks('grunt-contrib-compass');
	grunt.loadNpmTasks('grunt-contrib-csslint');
	grunt.loadNpmTasks('grunt-contrib-watch');

	grunt.registerTask('default', ['watch:uikit']);
}
