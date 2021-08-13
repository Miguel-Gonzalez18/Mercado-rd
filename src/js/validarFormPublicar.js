const valores = {
    nombreAnuncio: '',
    precioAnuncio: '',
    descripcionAnuncio: '',
    categoriaAnuncio: '',
    nuevo: '',
    usado: ''
}
const nombreA = document.querySelector('#nombreAnuncio');
const precioA = document.querySelector('#precioAnuncio');
const descripcionA = document.querySelector('#descripcionAnuncio');
const categoriaA = document.querySelector('#categoriaAnuncio');
const nuevoA = document.querySelector('#nuevo');
const usadoA = document.querySelector('#usado');
const labelUsado = document.querySelector('#labelusado');
const labelNuevo = document.querySelector('#labelnuevo');


nombreA.addEventListener('input', leerValor);
precioA.addEventListener('input', leerValor);
descripcionA.addEventListener('input', leerValor);
categoriaA.addEventListener('input', leerValor);
nuevoA.addEventListener('input', leerValor);
usadoA.addEventListener('input', leerValor);

function leerValor(e){
    valores[e.target.id] = e.target.value;
    console.log(valores);
}

const formulario = document.querySelector('.form-publicar');
formulario.addEventListener('submit', function(e){
    var img = document.getElementById('exampleFormControlFile1').files;
    const {nombreAnuncio, precioAnuncio, descripcionAnuncio, categoriaAnuncio, nuevo, usado} = valores;
    if(nombreAnuncio === ""){
        nombreA.classList.add('errorInput');
        setTimeout(()=>{
            nombreA.classList.remove('errorInput');
        }, 5000)
        e.preventDefault();
    }else if(precioAnuncio === ""){
        precioA.classList.add('errorInput');
        setTimeout(()=>{
            precioA.classList.remove('errorInput');
        }, 5000)
        e.preventDefault();
    }else if(descripcionAnuncio === ""){
        descripcionA.classList.add('textareaerror');
        setTimeout(()=>{
            descripcionA.classList.remove('textareaerror');
        }, 5000)
        e.preventDefault();
    }else if(categoriaAnuncio === ""){
        categoriaA.classList.add('selectError');
        setTimeout(()=>{
            categoriaA.classList.remove('selectError');
        }, 5000)
        e.preventDefault();
    }else if(nuevo === ""){
        if(usado === ""){
            labelNuevo.classList.add('radioerror');
            labelUsado.classList.add('radioerror');
            setTimeout(()=>{
                labelNuevo.classList.remove('radioerror');
                labelUsado.classList.remove('radioerror');
            }, 5000)
            e.preventDefault()
        }
    }
    else if(img.length===0){
        e.preventDefault();
    }
    else if(img.length >10){
        e.preventDefault();
    }
    else{

    }
});