if(document.querySelector('.form-register')){
    function formularioValidar(){
        let formularioRegistro = document.querySelector('.form-register');
        let progressOptions = document.querySelectorAll('.progressbar__option');
        formularioRegistro.addEventListener('click', function(e) {
            let element = e.target;
            let isButtonNext = element.classList.contains('step__button--next');
            let isButtonBack = element.classList.contains('step__button--back');
            let pasoActivo1 = document.getElementById('step-1');
            let pasoActivo2 = document.getElementById('step-2');
            let pasoActivo3 = document.getElementById('step-3');
            if (isButtonNext) {
                if(pasoActivo1.classList.contains('active'))
                {
                    validarAccount1();
                }
                else if(pasoActivo2.classList.contains('active')){
                    validarAccount2();
                }
                else if(pasoActivo3.classList.contains('active'))
                {
                    validarAccount3();
                }
                else
                {
        
                }
        
            }
            if(isButtonBack)
            {
                pasos()
            }
            function pasos() {
                let currentStep = document.getElementById('step-' + element.dataset.step);
                        let jumpStep = document.getElementById('step-' + element.dataset.to_step);
                        currentStep.addEventListener('animationend', function callback() {
                             currentStep.classList.remove('active');
                             jumpStep.classList.add('active');
                             if (isButtonNext) {
                                 currentStep.classList.add('to-left');
                                 progressOptions[element.dataset.to_step - 1].classList.add('active');
                             } else {
                                jumpStep.classList.remove('to-left');
                                 progressOptions[element.dataset.step - 1].classList.remove('active');
                             }
                            currentStep.removeEventListener('animationend', callback);
                         });
                         currentStep.classList.add('inactive');
                         jumpStep.classList.remove('inactive');
            }
            function validarAccount1() {
                var nombre = document.getElementById('nombre')
                var apellido = document.getElementById('Apellido')
                var fechaNac = document.getElementById('fechanac')
                var telefono = document.getElementById('telefono')
                var rango = document.getElementsByTagName("input")[3].value
            
                if(nombre.value.trim()==""){
                    document.getElementById('nombre').classList.add('validartext')
                    document.getElementById('Apellido').classList.remove('validartext')
                    document.getElementById('fechanac').classList.remove('validartext')
                    document.getElementById('telefono').classList.remove('validartext')
                    const alertaPrevia = document.querySelector('.alertaDiv')
                    if(alertaPrevia){
                        return;
                    }
                    alerta('<i class="fad fa-window-close"></i> Ingresa tu nombre', 'error', '.paso1');
                }
                else if(nombre.value.length < 3){
                    const alertaPrevia = document.querySelector('.alertaDiv')
                    if(alertaPrevia){
                        return;
                    }
                    alerta('<i class="fad fa-window-close"></i> Este nombre es muy corto', 'error', '.paso1');
                }
                else if(apellido.value.trim()=="")
                {
                    document.getElementById('Apellido').classList.add('validartext')
                    document.getElementById('nombre').classList.remove('validartext')
                    document.getElementById('fechanac').classList.remove('validartext')
                    document.getElementById('telefono').classList.remove('validartext')
                    const alertaPrevia = document.querySelector('.alertaDiv')
                    if(alertaPrevia){
                        return;
                    }
                    alerta('<i class="fad fa-window-close"></i> Ingresa tu apellido', 'error', '.paso1');

                }
                else if(apellido.value.length < 3){
                    const alertaPrevia = document.querySelector('.alertaDiv')
                    if(alertaPrevia){
                        return;
                    }
                    alerta('<i class="fad fa-window-close"></i> Este apellido es muy corto', 'error', '.paso1');
                }
                else if(fechaNac.value.trim()=="")
                {
                    document.getElementById('fechanac').classList.add('validartext')
                    document.getElementById('telefono').classList.remove('validartext')
                    document.getElementById('nombre').classList.remove('validartext')
                    document.getElementById('Apellido').classList.remove('validartext')
                    const alertaPrevia = document.querySelector('.alertaDiv')
                    if(alertaPrevia){
                        return;
                    }
                    alerta('<i class="fad fa-window-close"></i> Seleccione su fecha de nacimiento', 'error', '.paso1');
                }
                else if(calcularEdad(fechaNac.value) < 18){
                    document.getElementById('fechanac').classList.add('validartext')
                    document.getElementById('telefono').classList.remove('validartext')
                    document.getElementById('nombre').classList.remove('validartext')
                    document.getElementById('Apellido').classList.remove('validartext')
                    const alertaPrevia = document.querySelector('.alertaDiv')
                    if(alertaPrevia){
                        return;
                    }
                    alerta(`<i class="fad fa-times"></i> Eres menor de edad tienes ${calcularEdad(fechaNac.value)} años`, 'error', '.paso1');

                }
                else if(telefono.value.trim()=="")
                {
                    document.getElementById('fechanac').classList.remove('validartext')
                    document.getElementById('telefono').classList.add('validartext')
                    document.getElementById('nombre').classList.remove('validartext')
                    document.getElementById('Apellido').classList.remove('validartext')
                    const alertaPrevia = document.querySelector('.alertaDiv')
                    if(alertaPrevia){
                        return;
                    }
                    alerta('<i class="fad fa-window-close"></i> Ingrese un número de teléfono', 'error', '.paso1');
                }
                else if(!(rango.length===10)){
                    document.getElementById('fechanac').classList.remove('validartext')
                    document.getElementById('telefono').classList.add('validartext')
                    document.getElementById('nombre').classList.remove('validartext')
                    document.getElementById('Apellido').classList.remove('validartext')
                    const alertaPrevia = document.querySelector('.alertaDiv')
                    if(alertaPrevia){
                        return;
                    }
                    alerta('<i class="fad fa-window-close"></i> Número de teléfono no valido, vuelvalo a ingresar', 'error', '.paso1');

                }
                else{
                    document.getElementById('fechanac').classList.remove('validartext')
                    document.getElementById('telefono').classList.remove('validartext')
                    document.getElementById('nombre').classList.remove('validartext')
                    document.getElementById('Apellido').classList.remove('validartext')
                    pasos();
                
                }
            }
            function validarAccount2() {
                var direccion = document.getElementById('provincias')
                var cedula = document.getElementById('cedula')
                var correo = document.getElementById('correo')
              
        
                if(direccion.value=="0" || direccion.value.trim==""){
                    document.getElementById('provincias').classList.add('validartext')
                    document.getElementById('cedula').classList.remove('validartext')
                    document.getElementById('correo').classList.remove('validartext')
                    const alertaPrevia = document.querySelector('.alertaDiv')
                    if(alertaPrevia){
                        return;
                    }
                    alerta('<i class="fad fa-window-close"></i> A que provincia perteneces?', 'error', '.paso2');
                    
                }
                else if(cedula.value.trim()=="")
                {
                    document.getElementById('cedula').classList.add('validartext')
                    document.getElementById('provincias').classList.remove('validartext')
                    document.getElementById('correo').classList.remove('validartext')
                    const alertaPrevia = document.querySelector('.alertaDiv')
                    if(alertaPrevia){
                        return;
                    }
                    alerta('<i class="fad fa-window-close"></i> Debe colocar su cédula, este dato es obligatorio', 'error', '.paso2');
                }
                else if(!(cedula.value.length === 11)){
                    document.getElementById('cedula').classList.add('validartext')
                    document.getElementById('provincias').classList.remove('validartext')
                    document.getElementById('correo').classList.remove('validartext')
                    const alertaPrevia = document.querySelector('.alertaDiv')
                    if(alertaPrevia){
                        return;
                    }
                    alerta('<i class="fad fa-window-close"></i> La cédula debe tener 11 digitos', 'error', '.paso2');
                }
                else if(validarCedula(cedula.value)===false){
                    document.getElementById('cedula').classList.add('validartext')
                    document.getElementById('provincias').classList.remove('validartext')
                    document.getElementById('correo').classList.remove('validartext')
                }
                else if(correo.value.trim()==""){
                    document.getElementById('correo').classList.add('validartext')
                    document.getElementById('provincias').classList.remove('validartext')
                    document.getElementById('cedula').classList.remove('validartext')
                    const alertaPrevia = document.querySelector('.alertaDiv')
                    if(alertaPrevia){
                        return;
                    }
                    alerta('<i class="fad fa-window-close"></i> Debe ingresar un correo', 'error', '.paso2');
                }
                else if(!document.querySelector('input[name="sexo"]:checked'))
                {
                    document.getElementById('correo').classList.remove('validartext')
                    document.getElementById('provincias').classList.remove('validartext')
                    document.getElementById('cedula').classList.remove('validartext')
                    const alertaPrevia = document.querySelector('.alertaDiv')
                    if(alertaPrevia){
                        return;
                    }
                    alerta('<i class="fad fa-window-close"></i> Seleccione el genero', 'error', '.paso2');
                }
                else
                {
                    document.getElementById('correo').classList.remove('validartext')
                    document.getElementById('provincias').classList.remove('validartext')
                    document.getElementById('cedula').classList.remove('validartext')
                    pasos()
                    comprobacionFinal()
                }
            }
            
        });
    }

    function comprobacionFinal(){
        let formu = document.getElementById('formulario_crear')
        if (formu) {
            formu.addEventListener('submit', validaciónFinal, false);
        }
        else
        {
            console.log('no se encontro el formulario en el documento')
        }
    }
    
    // document.formulario_Crear.addEventListener('submit', validaciónFinal);
    function validaciónFinal(evObject) {
        var nombreUser = document.getElementById('user')
        var password = document.getElementById('pass')
        var confirmarC = document.getElementById('pass2')
        var terminos = document.getElementById('terminos');
        if(nombreUser.value.trim()=="")
        {
            evObject.preventDefault();
            document.getElementById('user').classList.add('validartext')
            document.getElementById('pass').classList.remove('validartext')
            document.getElementById('pass2').classList.remove('validartext')
            const alertaPrevia = document.querySelector('.alertaDiv')
            if(alertaPrevia){
                return;
            }
            alerta('<i class="fad fa-window-close"></i> Debe ingresar un nombre de usuario', 'error', '.paso3');
        }
        else if(password.value.trim()=="")
        {
            evObject.preventDefault();
            document.getElementById('user').classList.remove('validartext')
            document.getElementById('pass').classList.add('validartext')
            document.getElementById('pass2').classList.remove('validartext')
            const alertaPrevia = document.querySelector('.alertaDiv')
            if(alertaPrevia){
                return;
            }
            alerta('<i class="fad fa-window-close"></i> Ingresa una contraseña', 'error', '.paso3');
        }
        else if(confirmarC.value.trim()=="")
        {
            evObject.preventDefault();
            document.getElementById('user').classList.remove('validartext')
            document.getElementById('pass').classList.remove('validartext')
            document.getElementById('pass2').classList.add('validartext')
            const alertaPrevia = document.querySelector('.alertaDiv')
            if(alertaPrevia){
                return;
            }
            alerta('<i class="fad fa-window-close"></i> Confirme su contraseña', 'error', '.paso3');
        }
        else if(password.value!==confirmarC.value)
        {
            evObject.preventDefault();
            document.getElementById('user').classList.remove('validartext')
            document.getElementById('pass').classList.add('validartext')
            document.getElementById('pass2').classList.add('validartext')
            const alertaPrevia = document.querySelector('.alertaDiv')
            if(alertaPrevia){
                return;
            }
            alerta('<i class="fad fa-window-close"></i> Las contraseñas no coiciden', 'error', '.paso3');
        }
        else if(!(terminos.checked))
        {
            evObject.preventDefault();
            document.getElementById('user').classList.remove('validartext')
            document.getElementById('pass').classList.remove('validartext')
            document.getElementById('pass2').classList.remove('validartext')
            const alertaPrevia = document.querySelector('.alertaDiv')
            if(alertaPrevia){
                return;
            }
            alerta('<i class="fad fa-window-close"></i> Acepte los términos y condíciones', 'error', '.paso3');
        }
        else{
            document.getElementById('user').classList.remove('validartext')
            document.getElementById('pass').classList.remove('validartext')
            document.getElementById('pass2').classList.remove('validartext')
        }
    }

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
                const alertaPrevia = document.querySelector('.alertaDiv')
                if(alertaPrevia){
                    return;
                }
                let contenedorInput = '.paso2';
                alerta(`<i class="fad fa-times"></i> La cédula está incorrecta o no es real, intentelo de nuevo`, 'error', contenedorInput);
                return false;
            }
        }
        else{
            const alertaPrevia = document.querySelector('.alertaDiv')
            if(alertaPrevia){
                return;
            }
            let contenedorInput = '.paso2';
            alerta(`<i class="fad fa-times"></i> La cédula debe de ser de 11 digitos`, 'error', contenedorInput);
            return false;
        }

    }

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