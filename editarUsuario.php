<?php
    include('php/db.php');
    include('php/head.php');
    include('php/header.php');
    include('php/footer.php');
    include('php/aside.php');
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
        <form action="#">
            <div class="titulo">
                <h3>Tú información</h3>
            </div>
            <div class="img-cuenta" style="background-image: url('build/img/user.svg')">
                <label for="exampleFormControlFile1"><i class="fas fa-camera-retro"></i></label>
            </div>
            <input type="file" class="control-file" id="exampleFormControlFile1" name="foto" accept="image/*" onchange="previewIMG(event);">
            <div class="grupo-campo">
                <div class="campo">
                    <label for="nombre"><i class="fas fa-user"></i> Nombre</label>
                    <input type="text" name="nombre" id="nombre">
                </div>
                <div class="campo">
                    <label for="apellido"><i class="fas fa-user"></i> Apellidos</label>
                    <input type="text" name="nombre" id="apellido">
                </div>
            </div>
            <div class="grupo-campo">
                <div class="campo">
                    <label for="email"><i class="fas fa-at"></i> Email</label>
                    <input type="email" name="email" id="email">
                </div>
                <div class="campo">
                    <label for="fecha"><i class="fas fa-calendar-minus"></i> Fecha de nacimiento</label>
                    <input type="date" name="fecha" id="fecha">
                </div>
            </div>
            <div class="grupo-campo">
                <div class="campo">
                    <label for="cedula"><i class="fas fa-id-card"></i> Cédula</label>
                    <input type="number" name="cedula" id="cedula">
                </div>
                <div class="campo">
                    <label for="telefono"><i class="fas fa-phone-square"></i> Teléfono</label>
                    <input type="number" name="telefono" id="telefono">
                </div>
            </div>
            <div class="grupo-campo">
                <div class="campo">
                    <label for="direccion"><i class="fas fa-map-marker-alt"></i> De dónde eres?</label>
                    <select name="provincias" id="provincias" class="step__input">
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
                    <input type="radio" name="sexo" value="1" id="hombre">
                    <label class="labelRadio" id="labelhombre" for="hombre">Hombre</label>
                    <input type="radio" name="sexo" value="0" id="mujer">
                    <label class="labelRadio" id="labelmujer" for="mujer">Mujer</label>
                </div>
            </div>
            <div class="btn">
                <button type="submit"><i class="fad fa-save"></i> Guardar</button>
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