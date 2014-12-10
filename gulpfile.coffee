gulp = require 'gulp'
concat = require 'gulp-concat'
uglify = require 'gulp-uglify'
rename = require 'gulp-rename'

# source files in order as specified:
# https://github.com/LazarSoft/jsqrcode
SRC_FILES = [
  'src/grid.js',
  'src/version.js',
  'src/detector.js',
  'src/formatinf.js',
  'src/errorlevel.js',
  'src/bitmat.js',
  'src/datablock.js',
  'src/bmparser.js',
  'src/datamask.js',
  'src/rsdecoder.js',
  'src/gf256poly.js',
  'src/gf256.js',
  'src/decoder.js',
  'src/qrcode.js',
  'src/findpat.js',
  'src/alignpat.js',
  'src/databr.js'
]

gulp.task 'build', ->
  gulp.src SRC_FILES
    .pipe concat('jsqrcode.js')
    .pipe gulp.dest('lib/')
    .pipe uglify()
    .pipe rename('jsqrcode.min.js')
    .pipe gulp.dest('lib/')

gulp.task 'default', ['build']