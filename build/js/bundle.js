function menu_activo(){document.querySelector(".menu-main").classList.toggle("activo")}function dropdown(){document.querySelector(".dropdown").classList.toggle("dropdown-activo")}function previewIMG(e){var t=e.target.files[0],a=new FileReader;a.onload=function(){var e=a.result.toString();document.querySelector(".img-cuenta").style.backgroundImage='url("'+e+'")'},a.readAsDataURL(t)}function handleFiles(e){var t=document.getElementById("fileList");if(e.length){var a=document.createElement("ul");a.id="delete",t.appendChild(a);for(var r=0;r<e.length;r++){var n=document.createElement("li");a.appendChild(n);var o=document.createElement("img");o.src=window.URL.createObjectURL(e[r]),o.onload=function(){window.URL.revokeObjectURL(this.src)},n.appendChild(o)}}}if(document.addEventListener("DOMContentLoaded",()=>{window.addEventListener("scroll",(function(){document.querySelector(".header").classList.toggle("fijo",window.scrollY>0)}))}),document.addEventListener("DOMContentLoaded",e=>{if(document.querySelector(".formulario-informacion")){const e={nombre:"",apellido:"",email:"",fecha:"",cedula:"",telefono:"",provincia:"",sexo:""},o=document.querySelector("#nombre"),l=document.querySelector("#apellido"),i=document.querySelector("#email"),s=document.querySelector("#fecha"),c=document.querySelector("#cedula"),d=document.querySelector("#telefono"),u=document.querySelector("#provincia"),m=document.querySelector("#hombre"),v=document.querySelector("#mujer");function t(t){e[t.target.id]=t.target.value;const a=t.target.parentElement;let o="";if(a.classList.contains("nombre"))t.target.value.length<3&&(o=".nombre",r('<i class="fad fa-frown"></i> Este nombre es muy corto',"advertencia",o));else if(a.classList.contains("apellido"))t.target.value.length<3&&(o=".apellido",r('<i class="fad fa-frown"></i> Este apellido es muy corto',"advertencia",o));else if(a.classList.contains("telefono"))t.target.value.length>10&&(o=".telefono",r('<i class="fad fa-frown"></i> Este no es un número de teléfono valido',"advertencia",o));else if(a.classList.contains("cedula"))t.target.value.length>11&&(o=".cedula",r('<i class="fad fa-frown"></i> La cédula no puede tener mas de 11 digitos',"advertencia",o));else if(a.classList.contains("fecha")){o=".fecha";var l=n(s.value);l>=18?r('<i class="fad fa-grin-wink"></i> Todo bien',"correcto",o):r(`<i class="fad fa-frown"></i> Eres menor de edad, tienes ${l} años`,"advertencia",o)}else;}function a(t){e.sexo=t.target.value}function r(e,t,a){let r="";"advertencia"===t&&(r="advertencia"),"correcto"===t&&(r="correcto"),"error"===t&&(r="error");const n=document.querySelector(a),o=document.createElement("DIV");o.classList.add("alertaDiv"),n.appendChild(o);const l=document.createElement("P");l.classList.add(r),l.innerHTML=e,o.appendChild(l),setTimeout(()=>{o.remove()},3e3)}function n(e){var t=new Date,a=new Date(e),r=t.getFullYear()-a.getFullYear(),n=t.getMonth()-a.getMonth();return(n<0||0===n&&t.getDate()<a.getDate())&&r--,r}o.addEventListener("input",t),l.addEventListener("input",t),i.addEventListener("input",t),s.addEventListener("input",t),c.addEventListener("input",t),d.addEventListener("input",t),u.addEventListener("input",t),m.addEventListener("input",a),v.addEventListener("input",a),document.querySelector(".formulario-informacion").addEventListener("submit",e=>{if(contenedorInput="",""===o.value.trim())return contenedorInput=".nombre",r('<i class="fad fa-times"></i> No puede dejar el nombre vacío',"error",contenedorInput),void e.preventDefault();if(""===l.value.trim())return contenedorInput=".apellido",r('<i class="fad fa-times"></i> No puede dejar el apellido vacío',"error",contenedorInput),void e.preventDefault();if(""===i.value.trim())return contenedorInput=".email",r('<i class="fad fa-times"></i> No puede dejar el correo vacío',"error",contenedorInput),void e.preventDefault();if(s.value){contenedorInput=".fecha";var t=n(s.value);t>=18||(e.preventDefault(),r(`<i class="fad fa-times"></i> Eres menor de edad, tienes ${t} años`,"error",contenedorInput))}else r('<i class="fad fa-times"></i> Seleccione su fecha de nacimiento',"error",contenedorInput),e.preventDefault();c.value&&(!0===function(e){if(11===e.length){const t=e.substring(0,10),a=e.substring(10,11),n=parseInt(a),o=t.split(""),l=[1,2,1,2,1,2,1,2,1,2];let i="";for(let e=0;e<10;e++){const t=o[e]*l[e];i+=t}let s=0;i.split("").forEach(e=>{s+=parseInt(e)});if(s-s%10+10-s===n)return!0;return r('<i class="fad fa-times"></i> La cédula está incorrecta o no existe, intentelo de nuevo',"error",".cedula"),!1}return r('<i class="fad fa-times"></i> La cédula debe de ser de 11 digitos',"error",".cedula"),!1}(c.value)||(e.preventDefault(),console.log("hay un problema con la cedula"))),""===c.value.trim()&&(contenedorInput=".cedula",e.preventDefault(),r('<i class="fad fa-times"></i> Debe colocar su cédula, este dato es obligatorio',"error",contenedorInput)),m.checked||v.checked||e.preventDefault()})}}),document.querySelector(".form-register")){function formularioValidar(){let e=document.querySelector(".form-register"),t=document.querySelectorAll(".progressbar__option");e.addEventListener("click",(function(e){let a=e.target,r=a.classList.contains("step__button--next"),n=a.classList.contains("step__button--back"),o=document.getElementById("step-1"),l=document.getElementById("step-2"),i=document.getElementById("step-3");function s(){let e=document.getElementById("step-"+a.dataset.step),n=document.getElementById("step-"+a.dataset.to_step);e.addEventListener("animationend",(function o(){e.classList.remove("active"),n.classList.add("active"),r?(e.classList.add("to-left"),t[a.dataset.to_step-1].classList.add("active")):(n.classList.remove("to-left"),t[a.dataset.step-1].classList.remove("active")),e.removeEventListener("animationend",o)})),e.classList.add("inactive"),n.classList.remove("inactive")}r&&(o.classList.contains("active")?function(){var e=document.getElementById("nombre"),t=document.getElementById("Apellido"),a=document.getElementById("fechanac"),r=document.getElementById("telefono"),n=document.getElementsByTagName("input")[3].value;if(""==e.value.trim()){document.getElementById("nombre").classList.add("validartext"),document.getElementById("Apellido").classList.remove("validartext"),document.getElementById("fechanac").classList.remove("validartext"),document.getElementById("telefono").classList.remove("validartext");if(document.querySelector(".alertaDiv"))return;alerta('<i class="fad fa-window-close"></i> Ingresa tu nombre',"error",".paso1")}else if(e.value.length<3){if(document.querySelector(".alertaDiv"))return;alerta('<i class="fad fa-window-close"></i> Este nombre es muy corto',"error",".paso1")}else if(""==t.value.trim()){document.getElementById("Apellido").classList.add("validartext"),document.getElementById("nombre").classList.remove("validartext"),document.getElementById("fechanac").classList.remove("validartext"),document.getElementById("telefono").classList.remove("validartext");if(document.querySelector(".alertaDiv"))return;alerta('<i class="fad fa-window-close"></i> Ingresa tu apellido',"error",".paso1")}else if(t.value.length<3){if(document.querySelector(".alertaDiv"))return;alerta('<i class="fad fa-window-close"></i> Este apellido es muy corto',"error",".paso1")}else if(""==a.value.trim()){document.getElementById("fechanac").classList.add("validartext"),document.getElementById("telefono").classList.remove("validartext"),document.getElementById("nombre").classList.remove("validartext"),document.getElementById("Apellido").classList.remove("validartext");if(document.querySelector(".alertaDiv"))return;alerta('<i class="fad fa-window-close"></i> Seleccione su fecha de nacimiento',"error",".paso1")}else if(calcularEdad(a.value)<18){document.getElementById("fechanac").classList.add("validartext"),document.getElementById("telefono").classList.remove("validartext"),document.getElementById("nombre").classList.remove("validartext"),document.getElementById("Apellido").classList.remove("validartext");if(document.querySelector(".alertaDiv"))return;alerta(`<i class="fad fa-times"></i> Eres menor de edad tienes ${calcularEdad(a.value)} años`,"error",".paso1")}else if(""==r.value.trim()){document.getElementById("fechanac").classList.remove("validartext"),document.getElementById("telefono").classList.add("validartext"),document.getElementById("nombre").classList.remove("validartext"),document.getElementById("Apellido").classList.remove("validartext");if(document.querySelector(".alertaDiv"))return;alerta('<i class="fad fa-window-close"></i> Ingrese un número de teléfono',"error",".paso1")}else if(10!==n.length){document.getElementById("fechanac").classList.remove("validartext"),document.getElementById("telefono").classList.add("validartext"),document.getElementById("nombre").classList.remove("validartext"),document.getElementById("Apellido").classList.remove("validartext");if(document.querySelector(".alertaDiv"))return;alerta('<i class="fad fa-window-close"></i> Número de teléfono no valido, vuelvalo a ingresar',"error",".paso1")}else document.getElementById("fechanac").classList.remove("validartext"),document.getElementById("telefono").classList.remove("validartext"),document.getElementById("nombre").classList.remove("validartext"),document.getElementById("Apellido").classList.remove("validartext"),s()}():l.classList.contains("active")?function(){var e=document.getElementById("provincias"),t=document.getElementById("cedula"),a=document.getElementById("correo");if("0"==e.value||""==e.value.trim){document.getElementById("provincias").classList.add("validartext"),document.getElementById("cedula").classList.remove("validartext"),document.getElementById("correo").classList.remove("validartext");if(document.querySelector(".alertaDiv"))return;alerta('<i class="fad fa-window-close"></i> A que provincia perteneces?',"error",".paso2")}else if(""==t.value.trim()){document.getElementById("cedula").classList.add("validartext"),document.getElementById("provincias").classList.remove("validartext"),document.getElementById("correo").classList.remove("validartext");if(document.querySelector(".alertaDiv"))return;alerta('<i class="fad fa-window-close"></i> Debe colocar su cédula, este dato es obligatorio',"error",".paso2")}else if(11!==t.value.length){document.getElementById("cedula").classList.add("validartext"),document.getElementById("provincias").classList.remove("validartext"),document.getElementById("correo").classList.remove("validartext");if(document.querySelector(".alertaDiv"))return;alerta('<i class="fad fa-window-close"></i> La cédula debe tener 11 digitos',"error",".paso2")}else if(!1===validarCedula(t.value))document.getElementById("cedula").classList.add("validartext"),document.getElementById("provincias").classList.remove("validartext"),document.getElementById("correo").classList.remove("validartext");else if(""==a.value.trim()){document.getElementById("correo").classList.add("validartext"),document.getElementById("provincias").classList.remove("validartext"),document.getElementById("cedula").classList.remove("validartext");if(document.querySelector(".alertaDiv"))return;alerta('<i class="fad fa-window-close"></i> Debe ingresar un correo',"error",".paso2")}else if(document.querySelector('input[name="sexo"]:checked'))document.getElementById("correo").classList.remove("validartext"),document.getElementById("provincias").classList.remove("validartext"),document.getElementById("cedula").classList.remove("validartext"),s(),comprobacionFinal();else{document.getElementById("correo").classList.remove("validartext"),document.getElementById("provincias").classList.remove("validartext"),document.getElementById("cedula").classList.remove("validartext");if(document.querySelector(".alertaDiv"))return;alerta('<i class="fad fa-window-close"></i> Seleccione el genero',"error",".paso2")}}():i.classList.contains("active")&&validarAccount3()),n&&s()}))}function comprobacionFinal(){let e=document.getElementById("formulario_crear");e?e.addEventListener("submit",validaciónFinal,!1):console.log("no se encontro el formulario en el documento")}function validaciónFinal(e){var t=document.getElementById("user"),a=document.getElementById("pass"),r=document.getElementById("pass2"),n=document.getElementById("terminos");if(""==t.value.trim()){e.preventDefault(),document.getElementById("user").classList.add("validartext"),document.getElementById("pass").classList.remove("validartext"),document.getElementById("pass2").classList.remove("validartext");if(document.querySelector(".alertaDiv"))return;alerta('<i class="fad fa-window-close"></i> Debe ingresar un nombre de usuario',"error",".paso3")}else if(""==a.value.trim()){e.preventDefault(),document.getElementById("user").classList.remove("validartext"),document.getElementById("pass").classList.add("validartext"),document.getElementById("pass2").classList.remove("validartext");if(document.querySelector(".alertaDiv"))return;alerta('<i class="fad fa-window-close"></i> Ingresa una contraseña',"error",".paso3")}else if(""==r.value.trim()){e.preventDefault(),document.getElementById("user").classList.remove("validartext"),document.getElementById("pass").classList.remove("validartext"),document.getElementById("pass2").classList.add("validartext");if(document.querySelector(".alertaDiv"))return;alerta('<i class="fad fa-window-close"></i> Confirme su contraseña',"error",".paso3")}else if(a.value!==r.value){e.preventDefault(),document.getElementById("user").classList.remove("validartext"),document.getElementById("pass").classList.add("validartext"),document.getElementById("pass2").classList.add("validartext");if(document.querySelector(".alertaDiv"))return;alerta('<i class="fad fa-window-close"></i> Las contraseñas no coiciden',"error",".paso3")}else if(n.checked)document.getElementById("user").classList.remove("validartext"),document.getElementById("pass").classList.remove("validartext"),document.getElementById("pass2").classList.remove("validartext");else{e.preventDefault(),document.getElementById("user").classList.remove("validartext"),document.getElementById("pass").classList.remove("validartext"),document.getElementById("pass2").classList.remove("validartext");if(document.querySelector(".alertaDiv"))return;alerta('<i class="fad fa-window-close"></i> Acepte los términos y condíciones',"error",".paso3")}}function alerta(e,t,a){let r="";"advertencia"===t&&(r="advertencia"),"correcto"===t&&(r="correcto"),"error"===t&&(r="error");const n=document.querySelector(a),o=document.createElement("DIV");o.classList.add("alertaDiv"),n.appendChild(o);const l=document.createElement("P");l.classList.add(r),l.innerHTML=e,o.appendChild(l),setTimeout(()=>{o.remove()},3e3)}function validarCedula(e){if(11===e.length){const t=e.substring(0,10),a=e.substring(10,11),r=parseInt(a),n=t.split(""),o=[1,2,1,2,1,2,1,2,1,2];let l="";for(let e=0;e<10;e++){l+=n[e]*o[e]}let i=0;l.split("").forEach(e=>{i+=parseInt(e)});if(i-i%10+10-i===r)return!0;if(document.querySelector(".alertaDiv"))return;return alerta('<i class="fad fa-times"></i> La cédula está incorrecta o no es real, intentelo de nuevo',"error",".paso2"),!1}if(document.querySelector(".alertaDiv"))return;return alerta('<i class="fad fa-times"></i> La cédula debe de ser de 11 digitos',"error",".paso2"),!1}function calcularEdad(e){var t=new Date,a=new Date(e),r=t.getFullYear()-a.getFullYear(),n=t.getMonth()-a.getMonth();return(n<0||0===n&&t.getDate()<a.getDate())&&r--,r}}function alerta(e,t,a){let r="";"advertencia"===t&&(r="advertencia"),"correcto"===t&&(r="correcto"),"error"===t&&(r="error");const n=document.querySelector(a),o=document.createElement("DIV");o.classList.add("alertaDiv"),n.appendChild(o);const l=document.createElement("P");l.classList.add(r),l.innerHTML=e,o.appendChild(l),setTimeout(()=>{o.remove()},5e3)}function validaciónLogin(e){let t=document.getElementById("user"),a=document.getElementById("pass");""==t.value.trim()?(e.preventDefault(),document.getElementById("user").classList.add("error"),document.getElementById("pass").classList.remove("error")):""==a.value.trim()?(e.preventDefault(),document.getElementById("pass").classList.add("error"),document.getElementById("user").classList.remove("error")):(document.getElementById("pass").classList.remove("error"),document.getElementById("user").classList.remove("error"))}document.addEventListener("DOMContentLoaded",()=>{if(document.querySelector(".formulario-publicar")){const a={nombreAnuncio:"",precioAnuncio:"",descripcionAnuncio:"",categoriaAnuncio:"",condicionAnuncio:"",fotosAnuncio:""},r=document.querySelector("#nombreAnuncio"),n=document.querySelector("#precioAnuncio"),o=document.querySelector("#descripcionAnuncio"),l=document.querySelector("#categoriaAnuncio"),i=document.querySelector("#nuevo"),s=document.querySelector("#usado"),c=document.querySelector("#exampleFormControlFile1");function e(e){a[e.target.id]=e.target.value;const t=e.target.parentElement;let r="";document.querySelector(".alertaDiv")||(t.classList.contains("nombreInput")?(r=".nombreInput",e.target.value.length<15&&alerta('<i class="fad fa-frown"></i> El título es muy corto',"advertencia",r),e.target.value.length>20&&alerta('<i class="fad fa-grin-wink"></i> Correcto!!',"correcto",r)):t.classList.contains("descripcionInput")&&(r=".descripcionInput",e.target.value.length<50&&alerta('<i class="fad fa-frown"></i> Una descripción muy corta, describe con más detalles lo que vendes',"advertencia",r),e.target.value.length>100&&alerta('<i class="fad fa-grin-wink"></i> Ahora esta mejor!!, recuerda mientras mejor detallas lo que vendes mas facíl sera encontrarlo',"correcto",r)))}function t(e){a.condicionAnuncio=e.target.value}return r.addEventListener("input",e),n.addEventListener("input",e),o.addEventListener("input",e),l.addEventListener("input",e),i.addEventListener("input",t),s.addEventListener("input",t),c.addEventListener("input",(function(e){if(e.target.files.length>=10)return e.target.value="",void alerta('<i class="fad fa-frown"></i> Debes seleccionar minimo 10 fotos',"error",".selectfile");a.fotosAnuncio=e.target.files.length})),void document.querySelector(".formulario-publicar").addEventListener("submit",e=>{const{nombreAnuncio:t,precioAnuncio:r,descripcionAnuncio:n,categoriaAnuncio:o,condicionAnuncio:l,fotosAnuncio:i}=a;""===t.trim()?(alerta('<i class="fad fa-frown"></i> Debe ingresar el título del anuncio, este dato es obligatorio',"error",".nombreInput"),e.preventDefault()):""===r.trim()?(alerta('<i class="fad fa-frown"></i> Debe ingresar el precio del anuncio, este dato es obligatorio',"error",".precioInput"),e.preventDefault()):""===n.trim()?(alerta('<i class="fad fa-frown"></i> Debe describir lo que vende, este dato es obligatorio',"error",".descripcionInput"),e.preventDefault()):""===o.trim()?(alerta('<i class="fad fa-frown"></i> Elija una categoría, este dato es obligatorio',"error",".categoriaInput"),e.preventDefault()):""===l.trim()?(alerta('<i class="fad fa-frown"></i> Seleccione la condición del artículo, este dato es obligatorio',"error",".radio"),e.preventDefault()):""===i.trim()&&(alerta('<i class="fad fa-frown"></i> Debe seleccionar minimo 10 fotos, este dato es obligatorio',"error",".selectfile"),e.preventDefault())})}}),document.addEventListener("DOMContentLoaded",()=>{let e=document.getElementById("formulario_login");e?e.addEventListener("submit",validaciónLogin,!1):console.log("No existe el formulario")});
//# sourceMappingURL=bundle.js.map
