gulp = require 'gulp'
concat = require 'gulp-concat'

gulp.task 'style', ->

  # Style
  gulp.src [
    'src/**/*.less'
  ]
  .pipe concat 'main.css'
  .pipe gulp.dest 'web/css'
