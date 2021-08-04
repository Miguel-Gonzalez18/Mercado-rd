const {src, dest, watch, series, parallel} = require('gulp');
var sass = require('gulp-sass') (require('sass'));
const paths = {
     scss: 'src/scss/**/*scss'
}
function cssMinificado(){
    return src(paths.scss)
        .pipe( sass({
            outputStyle: 'compressed'
        }) )
        .pipe(dest('./build/css'))
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
}
exports.cssMinificado = cssMinificado;
exports.watchArchivos = watchArchivos;
exports.default = series(css, watchArchivos);