gulp = require 'gulp'
jade = require 'gulp-jade'
plumber = require 'gulp-plumber'
replace = require 'gulp-replace'

gulp.task 'index', ->
  gulp.src 'src/index.jade'
  .pipe plumber()
  .pipe replace /%scripts%/g, 'js'
  .pipe replace /%styles%/g, 'css'
  .pipe jade pretty: true
  .pipe replace '../www', ''
  .pipe gulp.dest 'web'
