<?php
    include('php/db.php');
    include('php/head.php');
    include('php/header.php');
    include('php/footer.php');
    session_start();
    if(isset($_SESSION['user'])){
        $userName=$_SESSION['nombre'];
        $stmt = $conexion->query("SELECT * FROM usuarios WHERE nombre= '$userName'");
        $row = $stmt->fetch_assoc();
    }
?>
<!DOCTYPE html>
<html lang="es">
<?php
    echo head();
?>
<?php
    echo cabecera();
?>
    <div class="contenedor contenido-usuario">
        <?php
            if(isset($_SESSION['user'])){
                
        ?>
        <div class="informacion-perfil menu-main">
            <h3>Tu cuenta</h3>
            <?php
                if(isset($_SESSION['fotoperfil'])==null){

            ?>
            <div class="foto-perfil" style="background-image: url('src/img/user.svg');">
            </div>
            <?php } else{?>
                <div class="foto-perfil" style="background-image: url('src/fotos/<?php echo( $_SESSION['fotoperfil']).'.jpg'; ?>');">
                </div>
            <?php }?>
            <p><?php echo $_SESSION['nombre']?></p>
            <ul class="lista-informacion">
                <li><i class="fas fa-envelope-square"></i> <?php echo $row['mail']?></li>
                <li><i class="fas fa-map-marker-alt"></i> <?php echo $row['direccion']?></li>
                <li><i class="fas fa-phone-square-alt"></i> <?php echo $row['telefono']?></li>
                <li>
                    <a href="#" class="boton boton-principal"><i class="fas fa-edit"></i> Editar perfil</a>
                    <a href="php/cerrarsesion.php" class="boton boton-principal btn-cerrarsesion"><i class="fad fa-sign-in-alt"></i> Cerrar sesión</a>
                </li>
            </ul>
            <h3>Explorar</h3>
            <div class="categorias-usuario">
                <ul class="lista-filtros">
                        <li>
                            <a href="#"><i class="fas fa-sort-numeric-up-alt"></i> Precios más altos</a>
                        </li>
                        <li>
                            <a href="#"><i class="fas fa-sort-numeric-down"></i> Precios más bajos</a>
                        </li>
                        <li>
                            <form>
                                <label for="provincias">Provincias:</label>
                                <select name="provincias" id="provincias">
                                  <option value="0" selected>seleccione</option>
                                  <option value="azua">Azua</option>
                                  <option value="bahoruco">Bahoruco</option>
                                  <option value="barahona">Barahona</option>
                                  <option value="dajabón">Dajabón</option>
                                  <option value="distrito Nacional">Distrito Nacional</option>
                                  <option value="duarte">Duarte</option>
                                  <option value="elíasPiña">Elías Piña</option>
                                  <option value="elSeibo">El Seibo</option>
                                  <option value="espaillat">Espaillat</option>
                                  <option value="hatoMayor">Hato Mayor</option>
                                  <option value="hermanasMirabal">Hermanas Mirabal</option>
                                  <option value="independencia">Independencia</option>
                                  <option value="laAltagracia">La Altagracia</option>
                                  <option value="laRomana">La Romana</option>
                                  <option value="laVega">La Vega</option>
                                  <option value="maríaTrinidadSánchez">María Trinidad Sánchez</option>
                                  <option value="monseñorNouel">Monseñor Nouel</option>
                                  <option value="monteCristi">Monte Cristi</option>
                                  <option value="montePlata">Monte Plata</option>
                                  <option value="pedernales">Pedernales</option>
                                  <option value="peravia">Peravia</option>
                                  <option value="puertoPlata">Puerto Plata</option>
                                  <option value="samaná">Samaná</option>
                                  <option value="sanCristóbal">San Cristóbal</option>
                                  <option value="sanJosédeOcoa">San José de Ocoa</option>
                                  <option value="sanJuan">San Juan</option>
                                  <option value="sanPedrodeMacorís">San Pedro de Macorís</option>
                                  <option value="sánchezRamírez">Sánchez Ramírez</option>
                                  <option value="santiago">Santiago</option>
                                  <option value="santoDomingoOeste">Santo Domingo Oeste</option>
                                  <option value="santoDomingoEste">Santo Domingo Este</option>
                                  <option value="valverde">Valverde</option>
                                </select>
                              </form>
                        </li>
                    </ul>
            </div>
            <h3>Categorías</h3>
            <div class="categorias-perfil">
                <ul>
                    <li><a href="#"><i class="fas fa-couch"></i> Hogar</a></li>
                    <li><a href="#"><i class="fas fa-car"></i> Vehículo</a></li>
                    <li><a href="#"><i class="fas fa-baby"></i> Bebes y niños</a></li>
                    <li><a href="#"><i class="fas fa-skating"></i> Deporte</a></li>
                    <li><a href="#"><i class="fas fa-microchip"></i> Electronica</a></li>
                    <li><a href="#"><i class="fas fa-tshirt"></i> Moda y belleza</a></li>
                    <li><a href="#"><i class="fas fa-mobile-alt"></i> Celulares y accesorios</a></li>
                    <li><a href="#"><i class="fas fa-laptop"></i> Computadoras y accesorios</a></li>
                    <li><a href="#"><i class="fas fa-home"></i> Inmuebles en venta y alquiler</a></li>
                    <li><a href="#"><i class="fas fa-align-center"></i> Otros</a></li>
                </ul>
            </div>
        </div>
        <div class="anuncios-usuario">
            <h3 class="h3anuncios">Tus anuncios</h3>
            <div class="articulos">
                <a href="#">
                    <div class="card">
                        <div class="card-head" style="background-image: url('./src/fotos/laptop');">
                            <div class="img-user" style="background-image: url('src/img/user.svg');"></div>
                        </div>
                        <div class="card-body">
                            <h2><span>RD$  </span>65,000</h3>
                            <h3>LAPTOP LENOVO LEGION 5 15ARHO5 AMD RYZEN 7</h3>
                        </div>
                    </div>
                </a>
            </div>
        </div>
        <?php
            }
        ?>
    </div>
        <?php
            if(isset($_SESSION['user'])){
        ?>
        <a href="./publicarAnuncio.php?title=Publicar" class="flotante"><i class="fad fa-plus-circle"></i></a>
        <?php
            } 
        ?>
    <?php
        echo footer();
    ?>
    <script src="src/js/app.js"></script>
</body>
</html>