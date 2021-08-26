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
            console.log(datos);
        }
        function leerCondicio(e){
            datos["condicionAnuncio"] = e.target.value;
            console.log(datos);
        }
        function leerFotos(e){
            datos["fotosAnuncio"] = e.target.files.length;
        }

        //validar que los datos no esten vacios
        return;
    }

});