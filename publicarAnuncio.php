<?php
    include('php/db.php');
    include('php/head.php');
    include('php/header.php');
    include('php/footer.php');
    @include('php/aside.php');
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
<body>
    <div class="form-publicar">
        <div class="titulo">
            <h3>Publicar anuncio</h3>
        </div>
        <form action="" method="post" class="formulario-publicar" name="form_producto" enctype="multipart/form-data">
            <div class="group-input">
                <div class="input nombreInput">
                    <label for="nombreAnuncio">Título del anuncio</label>
                    <input type="text" name="nombre" id="nombreAnuncio" placeholder="Ej: Vendo MacBook Air" autocomplete="off">
                </div>
                <div class="input precioInput">
                    <label for="precioAnuncio">Precio</label>
                    <input type="number" name="precio" id="precioAnuncio" placeholder="Ej: RD 60,000">
                </div>
            </div>
            <div class="textAreas descripcionInput">
                <label for="descripcionAnuncio">Descripción del anuncio</label>
                <textarea name="descripcion" id="descripcionAnuncio" cols="30" rows="10" placeholder="Describe lo que vendes"></textarea>
            </div>
            <div class="group-input">
                <div class="input categoriaInput">
                    <label for="categoriaAnuncio">¿A qué categoría pertenece?</label>
                    <select name="categoria" id="categoriaAnuncio">
                        <option value="0" selected>seleccione</option>
                        <option value="1">Bebes y niños</option>
                        <option value="2">Computadoras y accesorios</option>
                        <option value="3">Deporte</option>
                        <option value="4">Electronica</option>
                        <option value="5">Hogar</option>
                        <option value="6">Inmuebles en venta/alquiler</option>
                        <option value="7">Moda y belleza</option>
                        <option value="8">Celulares y accesorios</option>
                        <option value="9">Vehiculos</option>
                        <option value="10">Otros</option>
                    </select>
                </div>
                <div class="input">
                    <label for="marcaAnuncio">Marca(Opcional)</label>
                    <input type="text" name="marca" id="marcaAnuncio">
                </div>
            </div>
            <div class="group-radio">
                <div class="radio">
                  <input type="radio" name="estado" value="1" id="nuevo">
                  <label id="labelnuevo" for="nuevo">Nuevo</label>
                  <input type="radio" name="estado" value="0" id="usado">
                  <label id="labelusado" for="usado">Usado</label>
                </div>
            </div>
            <div class="selectfile">
                <label for="exampleFormControlFile1" class="labelFile"><i class="fas fa-images"></i> Selecciona las imagenes</label>
                <input type="file" class="form-control-file" id="exampleFormControlFile1" name="fotos[]" accept="image/*" multiple onchange="handleFiles(this.files)">
                <div class="listFile" id="fileList">
                </div>
            </div>
            <div class="btn-publicar">
                <button type="submit" name="publicar" class="boton-principal"><i class="fad fa-plus-circle"></i> Publicar</button>
            </div>
        </form>
    </div>

    <?php
        include 'conexion.php';
        $conexion = mysqli_connect($host_db, $user_db, $pass_db, $db_name);
        if ($conexion->connect_errno) {
        printf("Falló la conexión: %s\n", $conexion->connect_error);
        exit();
        }

        if(isset($_FILES['fotos']['name'])){
            $result = mysqli_query( $conexion ,"SHOW TABLE STATUS WHERE `Name` = 'productos'");
	        $data = mysqli_fetch_assoc($result);
            $next_increment = $data['Auto_increment'];
            $albumaleatorio = substr(strtoupper(md5(microtime(true))),9,19);

            $insertalbum=" INSERT INTO albumes (`usuario`,`fecha`,`nombre`) values ('".$_SESSION['ID']."',now(),'". $albumaleatorio."')";
            $crearalbum = mysqli_query( $conexion , $insertalbum );

            $idalbum = mysqli_query($conexion , "SELECT * FROM albumes WHERE `usuario` ='".$_SESSION['ID']."' AND `nombre` = '". $albumaleatorio."'");
            $alb = mysqli_fetch_array($idalbum , MYSQLI_ASSOC);

            for ($x=0; $x < count($_FILES['fotos']['name']); $x++) { 
                $alea = substr(strtoupper(md5(microtime(true))), 0,12);
	            $code = $next_increment.$alea;

                $type = 'jpg';
	            $rfoto = $_FILES['fotos']['tmp_name'][$x];
	            $name = $code.".".$type;

                if(is_uploaded_file($rfoto)){
                    move_uploaded_file($rfoto, 'build/productos/'.$name);

                    $subirimg = mysqli_query($conexion , "INSERT INTO fotos (`usuario`,`fecha`,`ruta`,`album`,`producto`) values ('".$_SESSION['ID']."',now(),'$name','".$albumaleatorio."','$next_increment')");
                    $llamadoimg = mysqli_query( $conexion ,"SELECT `id__fot` FROM fotos WHERE `usuario` = '".$_SESSION['ID']."' ORDER BY `fecha` desc");
	                $llaim = mysqli_fetch_array($llamadoimg , MYSQLI_ASSOC);
                }
                else{
                    exit;
                }
            }
            $queryasubir ="INSERT INTO productos (`usuario`,`fecha`,`contenido`,`imagen`, `titulo`,`precio`, `estado`,`categoria`,`marca`) values ('".$_SESSION['ID']."',now(),'" .$_POST['descripcion']. "','".$alb['id_alb']."','".$_POST['nombre']."','".$_POST['precio']."','".$_POST['estado']."','".$_POST['categoria']."','".$_POST['marca']."')";
            $subir = mysqli_query( $conexion , $queryasubir );
            if($subir) {
                echo '<script>window.location="index.php"</script>';
            }
        }

    ?>

    <?php
        echo footer();
    ?>
    <script src="build/js/bundle.js"></script>
</body>
</html>