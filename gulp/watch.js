'use strict';

var gulp          = require('gulp');
var browserSync   = require('browser-sync');
var path          = require('path');
var scriptsModule = null

function isOnlyChange(event) {
  return event.type === 'changed';
}

function watchFiles (options){

  return gulp.watch([
    options.src + '/**/*.js',
    options.src + '/**/*.coffee'
  ], function(event) {
    return gulp.start('build');
  });

}

module.exports = function(options) {
  scriptsModule = require('./scripts.js')(options);

  gulp.task('watch', function(){
    return watchFiles(options);
  });

};
