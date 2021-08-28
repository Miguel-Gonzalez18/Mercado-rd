<!DOCTYPE html>
<html lang="es">
<head>
     <meta charset="UTF-8">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <meta http-equiv="X-UA-Compatible" content="ie=edge">
     <title>Crear Cuenta</title>
     <link href="https://fonts.googleapis.com/css2?family=Baloo+Tamma+2&display=swap" rel="stylesheet">
     <link rel="shortcut icon" type="image/x-icon" href="build/img/icono.ico">
     <link rel="stylesheet" href="build/css/crearCuentacss.css">
</head>
<body>
     <div class="contenedor">
          <header>
               <a href="index.php" class="logo">
                    <img src="build/img/logo.png" alt="logo">
               </a>
          </header>
          <main>
               <div class="root">
               <form action="php/Registrando.php" class="form-register" id="formulario_crear" name="formulario_registro"  method="POST" onclick="formularioValidar();">
                         <div class="form-register__header">
                         <h3 class="form-register__title">Crear Cuenta</h3>
                              <ul class="progressbar">
                                   <li class="progressbar__option active">paso 1</li>
                                   <li class="progressbar__option">paso 2</li>
                                   <li class="progressbar__option">paso 3</li>
                              </ul>
                         </div>
                         <div class="form-register__body">
                              <div class="step active" id="step-1">
                                   <div class="step__header">
                                        <h2 class="step__title">Información Personal</h2>
                                   </div>
                                   <div class="step__body">
                                        <input type="text" placeholder="Nombre" class="step__input" id="nombre" name="nombre">
                                        <input type="text" placeholder="Apellido" class="step__input" id="Apellido" name="apellido">
                                        <input type="date" placeholder="Fecha de nacimiento" class="step__input" id="fechanac" name="fechanac">
                                        <input type="number" placeholder="Teléfono" class="step__input" id="telefono" name="telefono">
                                   </div>
                                   <div class="step__footer">
                                        <button type="button" class="step__button step__button--next" data-to_step="2" data-step="1">Siguiente</button>
                                   </div>
                              </div>
                              <div class="step" id="step-2">
                                   <div class="step__header">
                                        <h2 class="step__title">Información Personal</h2>
                                   </div>
                                   <div class="step__body">
                                        <select name="provincias" id="provincias" class="step__input">
                                        <option value="0" selected>De donde eres?</option>
                                        <option value="Azua">Azua</option>
                                        <option value="Bahoruco">Bahoruco</option>
                                        <option value="Barahona">Barahona</option>
                                        <option value="Dajabón">Dajabón</option>
                                        <option value="Distrito Nacional">Distrito Nacional</option>
                                        <option value="Duarte">Duarte</option>
                                        <option value="Elías Piña">Elías Piña</option>
                                        <option value="El Seibo">El Seibo</option>
                                        <option value="Espaillat">Espaillat</option>
                                        <option value="Hato Mayor">Hato Mayor</option>
                                        <option value="Hermanas Mirabal">Hermanas Mirabal</option>
                                        <option value="Independencia">Independencia</option>
                                        <option value="La Altagracia">La Altagracia</option>
                                        <option value="La Romana">La Romana</option>
                                        <option value="La Vega">La Vega</option>
                                        <option value="María Trinidad Sánchez">María Trinidad Sánchez</option>
                                        <option value="Monseñor Nouel">Monseñor Nouel</option>
                                        <option value="Monte Cristi">Monte Cristi</option>
                                        <option value="Monte Plata">Monte Plata</option>
                                        <option value="Pedernales">Pedernales</option>
                                        <option value="Peravia">Peravia</option>
                                        <option value="Puerto Plata">Puerto Plata</option>
                                        <option value="Samaná">Samaná</option>
                                        <option value="San Cristóbal">San Cristóbal</option>
                                        <option value="San JosédeOcoa">San José de Ocoa</option>
                                        <option value="San Juan">San Juan</option>
                                        <option value="San Pedro de Macorís">San Pedro de Macorís</option>
                                        <option value="Sánchez Ramírez">Sánchez Ramírez</option>
                                        <option value="Santiago">Santiago</option>
                                        <option value="Santo Domingo Oeste">Santo Domingo Oeste</option>
                                        <option value="Santo Domingo Este">Santo Domingo Este</option>
                                        <option value="Valverde">Valverde</option>
                                        </select>
                                        <input type="number" placeholder="Cédula" class="step__input" id="cedula" name="cedula">
                                        <input type="text" placeholder="Correo" class="step__input" id="correo" name="correo">
                                        <div class="radio">
                                             <input type="radio" name="sexo" id="hombre" value="M">
                                             <label for="hombre">Hombre</label>
                                             <input type="radio" name="sexo" id="mujer" value="F">
                                             <label for="mujer">Mujer</label>
                                        </div>
                                   </div>
                                   <div class="step__footer">
                                        <button type="button" class="step__button step__button--back" data-to_step="1" data-step="2">Regresar</button>
                                        <button type="button" class="step__button step__button--next siguiente1" data-to_step="3" data-step="2">Siguiente</button>
                                   </div>
                              </div>
                              <div class="step" id="step-3">
                                   <div class="step__header">
                                        <h2 class="step__title">Información de la cuenta</h2>
                                   </div>
                                   <div class="step__body">
                                        <input type="text" placeholder="Nombre de usuaio" class="step__input" id="user" name="user">
                                        <input type="text" placeholder="Contraseña" class="step__input" id="pass" name="pass">
                                        <input type="text" placeholder="Confirmar contraseña" class="step__input" id="pass2" name="pass2">
                                        <div class="checkbox">
                                             <input type="checkbox" id="terminos" name="terminosCondiciones" checked>
                                             <label for="terminos">Aceptar los terminos y condiciones</label>
                                        </div>
                                   </div>
                                   <div class="step__footer">
                                        <button type="button" class="step__button step__button--back" data-to_step="2" data-step="3">Regresar</button>
                                        <button type="submit" class="step__button">Registrarse</button>
                                   
                                   </div>
                              </div>
                         </div>
                    </form>
               </div>
               <div class="contenedor-img">
                    <img src="build/img/undraw_profile_6l1l.svg" alt="">
                    <p class="mensaje">Crea una cuenta para comprar y vender en Mercado RD</p>
               </div>
          </main>
     </div>
     <script src="build/js/bundle.js"></script>
</body>
</html>