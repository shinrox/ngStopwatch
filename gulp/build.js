'use strict';

var gulp = require('gulp');

var $ = require('gulp-load-plugins')({
  pattern: ['gulp-*', 'main-bower-files', 'uglify-save-license', 'del']
});

module.exports = function(options) {

  gulp.task('clean', function (done) {
    $.del([options.dist + '/**', '!' + options.dist, options.tmp + '/**', '!' + options.tmp], done);
  });


  gulp.task('build', ['clean', 'scripts'], function () {

    var jsFilter = $.filter(['**/*.js']);
    var assets;

    return gulp.src(options.tmp + '/**/*.js')
      .pipe(jsFilter)
      .pipe($.ngAnnotate())
      .pipe($.concat('stopwatch.js'))
      .pipe(gulp.dest(options.dist + '/'))
      .pipe(gulp.dest(options.examples + '/src/dist/'))
      .pipe($.concat('stopwatch.min.js'))
      .pipe($.uglify({ preserveComments: $.uglifySaveLicense })).on('error', options.errorHandler('Uglify'))
      .pipe(jsFilter.restore())
      .pipe(gulp.dest(options.dist + '/'))
      .pipe(gulp.dest(options.examples + '/src/dist/'))
      .pipe($.size({ title: options.dist + '/', showFiles: true }));
  });



};
