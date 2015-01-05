/* jshint -W079 */ // prevent redefinition of $ warning

'use strict';
var gulp = require('gulp');
var $ = require('gulp-load-plugins')();
var Q = require('q');
var fs = require('fs');
var rsync = require('rsyncwrapper').rsync;
var argv = require('minimist')(process.argv.slice(2));

gulp.task('app', ['initd', 'monit', 'log', 'logrotate']);

gulp.task('initd', function(){
  gulp.src('templates/initd')
      .pipe($.template({name: name}))
      .pipe(gulp.dest('/etc/init.d/' + name));
});

gulp.task('monit', function(){
  gulp.src('templates/monit')
      .pipe($.template({name: name}))
      .pipe(gulp.dest('/etc/monit/conf.d/' + name));
});

gulp.task('log', $.shell.task[
  'touch /var/log/' + name + '.log'
]);

gulp.task('logrotate', function(){
  gulp.src('templates/logrotate')
      .pipe($.template({name: name}))
      .pipe(gulp.dest('/etc/logrotate.d/' + name));
});