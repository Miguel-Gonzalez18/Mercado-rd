<?php
    include('php/db.php');
    session_start();
    if(isset($_SESSION['user'])){
        $userName=$_SESSION['nombre'];
        $stmt = $conexion->query("SELECT * FROM usuarios WHERE nombre= '$userName'");
        $row = $stmt->fetch_assoc();
      }
    function aside(){
?>
<aside class="menu-main">
            <div class="herramientas">
                <div class="sesion-movil">
                    <h3>Tu cuenta</h3>
                    <div class="cuenta">
                        <?php
                            if(isset($_SESSION['user'])){
                        ?>
                        <?php if(isset($_SESSION['fotoperfil'])==null){ ?>
                        <div class="img-perfil" style="background-image: url('src/img/user.svg');"></div>
                        <?php }else{ ?>
                        <div class="img-perfil" style="background-image: url('src/fotos/<?php echo( $_SESSION['fotoperfil']).'.jpg'; ?>');"></div>
                        <?php } ?>
                        <p><?php echo $_SESSION['nombre']?></p>
                        <ul>
                            <li>
                                <a href="#"><i class="fad fa-user-circle"></i> Ver pérfil</a>
                            </li>
                            <li>
                                <a href="#"><i class="far fa-comment-lines"></i> Chat</a>
                            </li>
                            <li>
                                <a href="#"><i class="fad fa-cog"></i> Configuración</a>
                            </li>
                            <li>
                                <a href="php/cerrarsesion.php"><i class="fad fa-sign-in-alt"></i> Cerrar sesión</a>
                            </li>
                        </ul>
                        <?php } else{ ?>
                        <a href="login.php?title=Iniciar sesión | Mercado RD"><i class="fad fa-door-open"></i> Iniciar sesión</a>
                        <?php } ?>
                    </div>
                    <h3>Buscar</h3>
                    <div class="buscar">
                        <form action="" method="post">
                            <div class="input-buscar">
                                <i class="fas fa-search"></i>
                                <input type="search" name="buscar" id="buscar" placeholder="Que deseas buscar?">
                            </div>
                        </form>
                    </div>
                </div>
                <h3>Explorar</h3>
                <div class="filtro">
                    <ul>
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
                                  <option value="distritoNacional">Distrito Nacional</option>
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
                                  <option value="santoDomingo">Santo Domingo</option>
                                  <option value="valverde">Valverde</option>
                                </select>
                              </form>
                        </li>
                    </ul>
                </div>

                <h3>Categorías</h3>
                <div class="categorias">
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
                <h3>Puedes buscarnos en</h3>
                <div class="redes-sociales">
                    <a href="#"><i class="fab fa-facebook"></i></a>
                    <a href="#"><i class="fab fa-youtube"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                </div>
                <h3 class="small">© 2021 Mercado RD. Todos los derechos reservados.</h3>
                <h3></h3>
            </div>
        </aside>
<?php
    }
?>