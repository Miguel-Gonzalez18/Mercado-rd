document.addEventListener('DOMContentLoaded', ()=>{
    //Tomamos toda la informacion y llenamos el objeto
    if(document.querySelector('.formulario-publicar')){
        const datos = {
            nombreAnuncio: '',
            precioAnuncio: '',
            descripcionAnuncio: '',
            categoriaAnuncio: '',
            condicionAnuncio: '',
            fotosAnuncio: ''
        }
        const nombreA = document.querySelector('#nombreAnuncio');
        const precioA = document.querySelector('#precioAnuncio');
        const descripcionA = document.querySelector('#descripcionAnuncio');
        const categoriaA = document.querySelector('#categoriaAnuncio');
        const nuevoA = document.querySelector('#nuevo');
        const usadoA = document.querySelector('#usado');
        const file = document.querySelector('#exampleFormControlFile1');
        nombreA.addEventListener('input', leerDatos);
        precioA.addEventListener('input', leerDatos);
        descripcionA.addEventListener('input', leerDatos);
        categoriaA.addEventListener('input', leerDatos);
        nuevoA.addEventListener('input', leerCondicio);
        usadoA.addEventListener('input', leerCondicio);
        file.addEventListener('input', leerFotos);
        

        function leerDatos(e){
            datos[e.target.id] = e.target.value;
            const elemnetPadre = e.target.parentElement;
            let contenedorInput = '';
            const alertaPrevia = document.querySelector('.alertaDiv')
            if(alertaPrevia){
                return;
            }

            if(elemnetPadre.classList.contains('nombreInput')){
                contenedorInput = '.nombreInput';
                if(e.target.value.length < 15){
                    alerta(`<i class="fad fa-frown"></i> El título es muy corto`, "advertencia", contenedorInput);
                }
                if(e.target.value.length > 20){
                    alerta(`<i class="fad fa-grin-wink"></i> Correcto!!`, "correcto", contenedorInput);
                }
            }else if(elemnetPadre.classList.contains('descripcionInput')){
                contenedorInput = '.descripcionInput';
                if(e.target.value.length < 50){
                    alerta(`<i class="fad fa-frown"></i> Una descripción muy corta, describe con más detalles lo que vendes`, "advertencia", contenedorInput);
                }
                if(e.target.value.length > 100){
                    alerta(`<i class="fad fa-grin-wink"></i> Ahora esta mejor!!, recuerda mientras mejor detallas lo que vendes mas facíl sera encontrarlo`, "correcto", contenedorInput);
                }
            }
        }
        function leerCondicio(e){
            datos["condicionAnuncio"] = e.target.value;
        }
        function leerFotos(e){
            if(e.target.files.length >= 10){
                e.target.value = '';
                alerta('<i class="fad fa-frown"></i> Debes seleccionar minimo 10 fotos', 'error', '.selectfile');
                return;
            }
            datos["fotosAnuncio"] = e.target.files.length;
        }

        //validar que los datos no esten vacios
        document.querySelector('.formulario-publicar').addEventListener('submit', e =>{
            const {nombreAnuncio, precioAnuncio, descripcionAnuncio, categoriaAnuncio, condicionAnuncio, fotosAnuncio} = datos;
            if(nombreAnuncio.trim() === ''){
                alerta('<i class="fad fa-frown"></i> Debe ingresar el título del anuncio, este dato es obligatorio', 'error', '.nombreInput');
                e.preventDefault();
            }
            else if(precioAnuncio.trim() === ''){
                alerta('<i class="fad fa-frown"></i> Debe ingresar el precio del anuncio, este dato es obligatorio', 'error', '.precioInput');
                e.preventDefault();
            }
            else if(descripcionAnuncio.trim() === ''){
                alerta('<i class="fad fa-frown"></i> Debe describir lo que vende, este dato es obligatorio', 'error', '.descripcionInput');
                e.preventDefault();
            }
            else if(categoriaAnuncio.trim() === ''){
                alerta('<i class="fad fa-frown"></i> Elija una categoría, este dato es obligatorio', 'error', '.categoriaInput');
                e.preventDefault();
            }
            else if(condicionAnuncio.trim() === ''){
                alerta('<i class="fad fa-frown"></i> Seleccione la condición del artículo, este dato es obligatorio', 'error', '.radio');
                e.preventDefault();
            }
            else if(fotosAnuncio.trim() === ''){
                alerta('<i class="fad fa-frown"></i> Debe seleccionar minimo 10 fotos, este dato es obligatorio', 'error', '.selectfile');
                e.preventDefault();
            }
        });
        return;
    }

});

function alerta(mensaje, tipo, contenedor){
    let nombreClase ='';
    if(tipo === "advertencia"){
        nombreClase = "advertencia";
    }
    if(tipo === "correcto"){
        nombreClase = "correcto";
    }
    if(tipo === "error"){
        nombreClase = "error";
    }
    const contenedorAlerta = document.querySelector(contenedor);
    const alertaDiv = document.createElement('DIV');

    alertaDiv.classList.add('alertaDiv');
    contenedorAlerta.appendChild(alertaDiv);

    const alerta = document.createElement('P');
    alerta.classList.add(nombreClase);
    alerta.innerHTML = mensaje;
    alertaDiv.appendChild(alerta);

    setTimeout(()=>{
        alertaDiv.remove();
    }, 5000)
    
}