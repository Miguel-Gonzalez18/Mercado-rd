<?php
    include('php/db.php');
    include('php/head.php');
    include('php/header.php');
    include('php/footer.php');
    include('php/aside.php');
    session_start();
?>
<!DOCTYPE html>
<html lang="es">
<?php
    echo head();
?>
    <?php
        echo cabecera();
    ?>
    <div class="contenido-principal">
    <?php
        echo aside();
    ?>
    <div class="informacion">
        <form action="#" method="post" enctype="multipart/form-data" class="formulario-informacion">
            <div class="titulo">
                <h3>Tú información</h3>
            </div>
            <?php
                if($_SESSION['fotoperfil']==null){
            ?>
            <div class="img-cuenta" style="background-image: url('build/img/user.svg')">
                <label for="exampleFormControlFile1"><i class="fas fa-camera-retro"></i></label>
            </div>
            <?php
                }else{
            ?>
            <div class="img-cuenta" style="background-image: url('build/fotos/<?php echo( $_SESSION['fotoperfil']).'.jpg'; ?>')">
                <label for="exampleFormControlFile1"><i class="fas fa-camera-retro"></i></label>
            </div>
            <?php
                }
            ?>
            <input type="file" class="control-file" id="exampleFormControlFile1" name="foto" accept="image/*" onchange="previewIMG(event);">
            <div class="grupo-campo">
                <div class="campo nombre">
                    <label for="nombre"><i class="fas fa-user"></i> Nombre</label>
                    <input type="text" name="nombre" id="nombre" placeholder="Escribe tu nombre" autocomplete="off" value="<?php echo $_SESSION['nombre'] ?>">
                </div>
                <div class="campo apellido">
                    <label for="apellido"><i class="fas fa-user"></i> Apellidos</label>
                    <input type="text" name="nombre" id="apellido" placeholder="Escribe tu apellido" autocomplete="off" value="<?php echo  $_SESSION['apellido'] ?>">
                </div>
            </div>
            <div class="grupo-campo">
                <div class="campo email">
                    <label for="email"><i class="fas fa-at"></i> Email</label>
                    <input type="email" name="email" id="email" placeholder="Introduce un correo" value="<?php echo $_SESSION['email'] ?>">
                </div>
                <div class="campo fecha">
                    <label for="fecha"><i class="fas fa-calendar-minus"></i> Fecha de nacimiento</label>
                    <input type="date" name="fecha" id="fecha" value="<?php echo $_SESSION['fechanac'] ?>">
                </div>
            </div>
            <div class="grupo-campo">
                <div class="campo cedula">
                    <label for="cedula"><i class="fas fa-id-card"></i> Cédula</label>
                    <input type="number" name="cedula" id="cedula" placeholder="Tu cédula" value="<?php echo $_SESSION['cedula'] ?>">
                </div>
                <div class="campo telefono">
                    <label for="telefono"><i class="fas fa-phone-square"></i> Teléfono</label>
                    <input type="number" pattern="[0-9]{3}[0-9]{3}[0-9]{4}" name="telefono" id="telefono" placeholder="Tu número de teléfono" value="<?php echo $_SESSION['telefono'] ?>">
                </div>
            </div>
            <div class="grupo-campo">
                <div class="campo provincia">
                    <label for="direccion"><i class="fas fa-map-marker-alt"></i> De dónde eres?</label>
                    <select name="direccion" id="provincia">
                        <option value="0" selected>De dónde eres?</option>
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
                </div>
                <div class="campo radioCampo">
                    <?php
                        if($_SESSION['genero'] = 'Hombre' ){
                    ?>
                    <input type="radio" checked name="sexo" value="hombre" id="hombre">
                    <label class="labelRadio" id="labelhombre" for="hombre">Hombre</label>
                    <input type="radio" name="sexo" value="mujer" id="mujer">
                    <label class="labelRadio" id="labelmujer" for="mujer">Mujer</label>
                    <?php
                        }else{
                    ?>
                    <input type="radio" name="sexo" value="hombre" id="hombre">
                    <label class="labelRadio" id="labelhombre" for="hombre">Hombre</label>
                    <input type="radio" checked name="sexo" value="mujer" id="mujer">
                    <label class="labelRadio" id="labelmujer" for="mujer">Mujer</label>
                    <?php
                        }
                    ?>
                </div>
            </div>
            <div class="btn">
                <button  name="publicar" type="submit"><i class="fad fa-save"></i> Guardar</button>
            </div>
        </form>
    </div>
    </div>
    <?php
        echo footer();
    ?>
    <script src="build/js/bundle.js"></script>
</body>
</html>