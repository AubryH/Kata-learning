gulp = require 'gulp'

gulp.task 'watch', ->
  gulp.watch 'devops/build/**', ['build']
  gulp.watch 'src/**', ['build']
