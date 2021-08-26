document.addEventListener('DOMContentLoaded', ()=>{
    //Tomamos toda la informacion y llenamos el objeto
    if(document.querySelector('.formulario-publicar')){
        const datos = {
            nombreAnuncio: '',
            precioAnuncio: '',
            descripcionAnuncio: '',
            categoriaAnuncio: '',
            marcaAnuncio: '',
            condicionAnuncio: '',
            fotosAnuncio: ''
        }
        const nombreA = document.querySelector('#nombreAnuncio');
        const precioA = document.querySelector('#precioAnuncio');
        const descripcionA = document.querySelector('#descripcionAnuncio');
        const categoriaA = document.querySelector('#categoriaAnuncio');
        const marcaA = document.querySelector('#marcaAnuncio');
        const nuevoA = document.querySelector('#nuevo');
        const usadoA = document.querySelector('#usado');
        const file = document.querySelector('#exampleFormControlFile1');
        nombreA.addEventListener('input', leerDatos);
        precioA.addEventListener('input', leerDatos);
        descripcionA.addEventListener('input', leerDatos);
        categoriaA.addEventListener('input', leerDatos);
        marcaA.addEventListener('input', leerDatos);
        nuevoA.addEventListener('input', leerCondicio);
        usadoA.addEventListener('input', leerCondicio);
        file.addEventListener('input', leerFotos);
        

        function leerDatos(e){
            datos[e.target.id] = e.target.value;
            console.log(datos)
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
            console.log(datos);
        }
        function leerFotos(e){
            datos["fotosAnuncio"] = e.target.files.length;
        }

        //validar que los datos no esten vacios
        document.querySelector('.formulario-publicar').addEventListener('submit', e =>{
            
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
    }, 3000)
    
}