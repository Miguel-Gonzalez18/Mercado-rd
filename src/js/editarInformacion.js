function previewIMG(event)
{
    var input = event.target.files[0];
    var reader = new FileReader();
    reader.onload = function(){
        var results = reader.result;
        var caracteres = results.toString();
        var perfilIMG = document.querySelector('.img-cuenta');
        perfilIMG.style.backgroundImage = 'url("'+caracteres+'")';
    }
    reader.readAsDataURL(input);
}
document.addEventListener('DOMContentLoaded', e =>{
    if(document.querySelector('.formulario-informacion')){
        // creamos un objeto para almacenar la información
        const datos = {
            nombre: '',
            apellido: '',
            email: '',
            fecha: '',
            cedula: '',
            telefono: '',
            provincia: '',
            sexo: ''
        }
        //Seleccionamos los inputs del formulario a validar
        const nombre = document.querySelector('#nombre');
        const apellido = document.querySelector('#apellido');
        const email = document.querySelector('#email');
        const fecha = document.querySelector('#fecha');
        const cedula = document.querySelector('#cedula');
        const telefono = document.querySelector('#telefono');
        const provincias = document.querySelector('#provincia');
        const hombre = document.querySelector('#hombre');
        const mujer = document.querySelector('#mujer');

        //Escuchamos el evento input de los campos para saber que escriben
        nombre.addEventListener('input', leerDatos);
        apellido.addEventListener('input', leerDatos);
        email.addEventListener('input', leerDatos);
        fecha.addEventListener('input', leerDatos);
        cedula.addEventListener('input', leerDatos);
        telefono.addEventListener('input', leerDatos);
        provincias.addEventListener('input', leerDatos);
        hombre.addEventListener('input', validarSexo);
        mujer.addEventListener('input', validarSexo);

        //Creamos una funcion para leer lo que escribe el usuario
        function leerDatos(e){
            datos[e.target.id] = e.target.value;
            const elementoPadre = e.target.parentElement;
            let contenedorInput = '';
            
            //Verificamos que el nombre sea correcto
            if(elementoPadre.classList.contains('nombre')){
                if(e.target.value.length < 3){
                    contenedorInput = '.nombre';
                    alerta(`<i class="fad fa-frown"></i> Este nombre es muy corto`, 'advertencia', contenedorInput);
                }
                return;
            }
            //verificamos que el apellido sea correcto
            if(elementoPadre.classList.contains('apellido')){
                if(e.target.value.length < 3){
                    contenedorInput = '.apellido';
                    alerta(`<i class="fad fa-frown"></i> Este apellido es muy corto`, 'advertencia', contenedorInput);
                }
                return;
            }

            //Verificamos el numero de telefono
            if(elementoPadre.classList.contains('telefono')){
                if(e.target.value.length > 10){
                    contenedorInput = '.telefono';
                    alerta(`<i class="fad fa-frown"></i> Este no es un número de teléfono valido`, 'advertencia', contenedorInput);
                }
                return;
            }

            //Verificamos la cedula
            if(elementoPadre.classList.contains('cedula')){
                if(e.target.value.length > 11){
                    contenedorInput = '.cedula';
                    alerta(`<i class="fad fa-frown"></i> La cédula no puede tener mas de 11 digitos`, 'advertencia', contenedorInput);
                }
                return;
            }
            
            //validamos la fecha de nacimiento
            if(elementoPadre.classList.contains('fecha')){
                contenedorInput = '.fecha';
                var edad = calcularEdad(fecha.value);
                if(edad >= 18){
                    alerta(`<i class="fad fa-grin-wink"></i> Todo bien`, 'correcto', contenedorInput);
                }else{
                    alerta(`<i class="fad fa-frown"></i> Eres menor de edad, tienes ${edad} años`, 'advertencia', contenedorInput);
                }
                return;
            }
        }
        document.querySelector('.formulario-informacion').addEventListener('submit', e =>{
            //extraemos los datos del objeto
            contenedorInput = '';
            if(nombre.value.trim()===''){
                contenedorInput = '.nombre';
                alerta(`<i class="fad fa-times"></i> No puede dejar el nombre vacío`, 'error', contenedorInput);
                e.preventDefault();
                return;
            }
            if(apellido.value.trim()===''){
                contenedorInput = '.apellido';
                alerta(`<i class="fad fa-times"></i> No puede dejar el apellido vacío`, 'error', contenedorInput);
                e.preventDefault();
                return;
            }
            if(email.value.trim()===''){
                contenedorInput = '.email';
                alerta(`<i class="fad fa-times"></i> No puede dejar el correo vacío`, 'error', contenedorInput);
                e.preventDefault();
                return;
            }
            if(fecha.value){
                contenedorInput = '.fecha';
                var edad = calcularEdad(fecha.value);
                if(edad >= 18){
                }else{
                    e.preventDefault();
                    alerta(`<i class="fad fa-times"></i> Eres menor de edad, tienes ${edad} años`, 'error', contenedorInput);
                }
            }else{
                alerta(`<i class="fad fa-times"></i> Seleccione su fecha de nacimiento`, 'error', contenedorInput);
                e.preventDefault();
            }
            if(cedula.value){
                if(validarCedula(cedula.value)===true)
                {

                }
                else{
                    e.preventDefault();
                    console.log('hay un problema con la cedula')
                }
            }
            if(cedula.value.trim()===''){
                contenedorInput = '.cedula';
                e.preventDefault();
                alerta(`<i class="fad fa-times"></i> Debe colocar su cédula, este dato es obligatorio`, 'error', contenedorInput);
            }
            if(hombre.checked || mujer.checked){
            }else{
                e.preventDefault();
            }

        });
        //Funcion paara validar la cédula
        function validarCedula(cedulaCompleta){
            if( cedulaCompleta.length === 11){
                const cedula = cedulaCompleta.substring(0,10);
                const digitoVerificador = cedulaCompleta.substring(10, 11);
                const ultimoDigito = parseInt(digitoVerificador);

                const cedulaArray = cedula.split('');
                const arrayEscala = [1,2,1,2,1,2,1,2,1,2];
                let cadenaString = '';
                
                for (let index = 0; index < 10; index++) {
                    const result = cedulaArray[index] * arrayEscala[index];
                    cadenaString += result;
                }
                let suma = 0;
                const resultadoArray=cadenaString.split('');
                resultadoArray.forEach(numero=>{
                    suma+=parseInt(numero);
                });
                const decenaSuperior = suma - (suma%10) + 10;
                const total = decenaSuperior - suma;
                if(total === ultimoDigito){
                    return true;
                }else{
                    let contenedorInput = '.cedula';
                    alerta(`<i class="fad fa-times"></i> La cédula está incorrecta o no existe, intentelo de nuevo`, 'error', contenedorInput);
                    return false;
                }
            }
            else{
                let contenedorInput = '.cedula';
                alerta(`<i class="fad fa-times"></i> La cédula debe de ser de 11 digitos`, 'error', contenedorInput);
                return false;
            }

        }

        //Funcion para validar los radiosButton
        function validarSexo(e){
            datos["sexo"] = e.target.value;
        }

        //Creamos una alerta personalizada
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

            const alertaDiv = document.createElement('DIV')
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

        // funcion para validar la fecha
        function calcularEdad(fecha_nacimiento) {
            var hoy = new Date();
            var cumpleanos = new Date(fecha_nacimiento);
            var edad = hoy.getFullYear() - cumpleanos.getFullYear();
            var m = hoy.getMonth() - cumpleanos.getMonth();
            if (m < 0 || (m === 0 && hoy.getDate() < cumpleanos.getDate())) {
                edad--;
            }
            return edad;
        }
    }
});