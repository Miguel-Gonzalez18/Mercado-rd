const {src, dest, watch, series, parallel} = require('gulp');
var sass = require('gulp-sass') (require('sass'));
const cssnano = require('cssnano');
const concat = require('gulp-concat');
const autoprefixer = require('autoprefixer');
const postcss = require('gulp-postcss');
const sourcemaps = require('gulp-sourcemaps');
const notify = require('gulp-notify');
const imagemin = require('gulp-imagemin');
const cache = require('gulp-cache');
//Utilidades Js
const terser = require('gulp-terser-js');
const rename = require('gulp-rename');
const paths = {
     scss: 'src/scss/**/*scss',
     js: 'src/js/**/*.js',
     img: 'src/img/**/*'
}
function javascript(){
    return src(paths.js)
        .pipe(sourcemaps.init())
        .pipe(concat('bundle.js'))
        .pipe(terser())
        .pipe(sourcemaps.write('.'))
        .pipe(rename({surfix: '.min'}))
        .pipe(dest('./build/js'))
}
function cssMinificado(){
    return src(paths.scss)
        .pipe(sourcemaps.init())
        .pipe( sass() )
        .pipe(postcss([autoprefixer(), cssnano()]))
        .pipe(sourcemaps.write('.'))
        .pipe(dest('./build/css'))
}
function imagenes() {
    return src(paths.img)
        .pipe(cache(imagemin({ optimizationLevel: 3})))
        .pipe(dest('build/img'))
        .pipe(notify({ message: 'Imagen Completada'}));
}
function css(){
    return src(paths.scss)
    .pipe( sass({
        outputStyle: 'expanded'
    }) )
    .pipe( dest('./build/css'))
}
function watchArchivos(){
    watch(paths.scss, css);
    watch(paths.js, javascript);
}
exports.imagenes = imagenes;
exports.cssMinificado = cssMinificado;
exports.watchArchivos = watchArchivos;
exports.default = series(cssMinificado, javascript, imagenes, watchArchivos);