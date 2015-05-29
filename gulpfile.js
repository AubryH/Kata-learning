require('coffee-script/register');
require('./devops/build/style.coffee');
require('./devops/build/watch.coffee');
require('./devops/build/index.coffee');

var gulp = require('gulp');
gulp.task('build', ['style', 'index']);
