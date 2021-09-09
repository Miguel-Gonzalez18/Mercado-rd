<?php
    include('php/db.php');
    include('php/head.php');
    include('php/header.php');
    include('php/aside.php');
    include('php/footer.php')
?>
<!DOCTYPE html>
<html lang="es">
<?php
    echo head();
?>
<?php
    echo cabecera();
?>
	<script type="text/javascript" src="build/js/jquery-1.2.6.pack.js"></script>
    <script type="text/javascript" src="build/js/scripts.js"></script>
    <div class="contenido-detalle-anuncio">
        <?php
            echo aside();
        ?>
        <div class="galeria-img">
            <?php
                if(isset($_GET['user']) && isset($_GET['album'])){
                    $idUsuario = $_GET['user'];
                    $album = $_GET['album'];
                    $idProducto = $_GET['idProducto'];
                    $queryUser = "SELECT usuarios.nombre, usuarios.apellido, usuarios.fotoperfil, usuarios.telefono, usuarios.direccion, productos.titulo, productos.id_pub, productos.precio, productos.fecha, productos.contenido, productos.estado, fotos.ruta, fotos.album FROM usuarios INNER JOIN productos ON usuarios.id_usuario = productos.usuario INNER JOIN fotos ON fotos.id__fot = productos.imagen WHERE usuarios.id_usuario = '$idUsuario' AND productos.id_pub = '$idProducto'";
                    $resultUser = mysqli_query($conexion, $queryUser);
                    if(!$resultUser){
                        die('error de consulta: '. mysqli_error($conexion));
                    }

                    $query = "SELECT * FROM fotos WHERE usuario = '$idUsuario' AND album = '$album'";
                    $result = mysqli_query($conexion, $query);
                    if(!$result){
                        die('error de consulta: '. mysqli_error($conexion));
                    }
                }
            ?>
            <div class="galeriaPro">
					<?php
						$featured_dir = 'build/productos/'; /* carpeta para imágenes grandes */
						$scan = scandir($featured_dir);
					?>
				<div class="featu" id="featured" style='background-image: url("build/productos/<?php echo $_GET['img1']?>");'>
					<h3></h3>
				</div><!--end featured-->
				<ul id="options" class="opcionesIMG">
					<?php
					while ($row = $result->fetch_assoc()) {
					/* solamente leerá ficheros jpg */
							echo '
								<li>
								<a href="">
								<img src="' . $featured_dir.$row["ruta"] . '" alt="'. $row["ruta"] . '" name="'. $_GET["titulo"].'" />
								</a>
								</li>';
					
					}; 
					?>
				</ul>
			<?php
                while($row1 = $resultUser->fetch_assoc()){
            ?>
            <div class="descripcion-producto">
                <h3>Detalles</h3>
                <div class="text">
                    <p><?php echo $row1['contenido']?></p>
                </div>
            </div>
			</div><!--end container-->

            <div class="info-vendedor">
                <div class="contenedor-foto">
                    <div class="foto-vendedor" style='background-image: url("build/fotos/<?php echo $row1['fotoperfil']?>.jpg");'>

                    </div>
                    <div class="datos-vendedor">
                        <h3><?php echo $row1['nombre']?> <?php echo $row1['apellido']?></h3>
                        <div class="datos">
							<div>
								<p style="color:#C99806;"><i class="fas fa-phone-square-alt"></i> <?php echo $row1['telefono']?></p>
							</div>
							<div>
								<p style="color:#C99806;"><i class="fas fa-map-marker-alt"></i> <?php echo ($row1['direccion']);  ?></p>
							</div>
						</div>
                    </div>
                </div>
                <div class="producto-datos">
                    <div class="producto-btn">
                        <a href="#" class="boton-principal"><i class="fad fa-comment-alt-dots"></i> Chatear con este vendedor</a>
                        <a href="#" class="boton-secundario"><i class="fad fa-address-card"></i> Ver perfil</a>
                    </div>
                    <div class="datos-vendedor">
                        <h3><?php echo $row1['titulo']?></h3>
                        <h2><span>$RD</span> <?php echo $row1['precio']?></h2>

                        <?php 
                        setlocale(LC_TIME, "spanish");
                        $Nueva_Fecha = date("d-m-Y", strtotime($row1['fecha']));
                        $fechaSpanish = strftime("%A, %d de %B de %Y", strtotime($Nueva_Fecha));
                        ?>
                        <small>Publicado el: <?php echo $fechaSpanish?></small>
                    </div>
                </div>
                <?php }?>
            </div>
        </div>
    </div>
    <?php
        echo footer();
    ?>
    <script src="src/js/app.js"></script>
</body>
</html>