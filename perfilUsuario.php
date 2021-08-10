<?php
    include('php/db.php');
    include('php/head.php');
    include('php/header.php');
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
            <ul>
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
    <script src="src/js/app.js"></script>
</body>
</html>