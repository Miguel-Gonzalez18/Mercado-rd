window.addEventListener('scroll', function(){
    let header = document.querySelector("header");
    header.classList.toggle("fijo", window.scrollY > 0);
})
function menu_activo() {
    let menu = document.querySelector(".menu-main");
    menu.classList.toggle("activo");
    let menutoggle = document.querySelector(".menutoggle");
}
function dropdown(){
    let activo = document.querySelector('.dropdown');
    activo.classList.toggle("dropdown-activo");
}