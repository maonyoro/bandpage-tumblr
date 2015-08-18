gulp = require('gulp')
sass = require('gulp-sass')
jade = require('gulp-jade')
coffee = require('gulp-coffee')
webserver = require('gulp-webserver')

# Default rule
gulp.task 'default', ->
  gulp.watch './src/*.jade', ['jade']
  gulp.watch './src/*.scss', ['sass']
  gulp.watch './src/*.coffee', ['coffee']
  gulp.src('./dst').pipe(
    webserver({
      livereload: true
    })
  )

# subroutine
gulp.task 'jade', ->
  gulp.src('./src/*.jade').pipe(jade()).pipe(gulp.dest('./dst/'))

gulp.task 'sass', ->
  gulp.src('./src/*.scss').pipe(sass()).pipe(gulp.dest('./dst/'))

gulp.task 'coffee', ->
  gulp.src('./src/*.coffee').pipe(coffee()).pipe(gulp.dest('./dst/'))

