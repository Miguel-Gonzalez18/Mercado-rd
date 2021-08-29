<?php
    session_start();
    include('php/db.php');
    if(isset($_SESSION['user'])){
        $userName=$_SESSION['nombre'];
        $stmt = $conexion->query("SELECT * FROM usuarios WHERE nombre= '$userName'");
        $row = $stmt->fetch_assoc();
      }
    function cabecera()
    {
?>
<body>
    <header class="header">
        <div class="contenedor">
            <nav class="navegacion">
                <a href="index.php?title=Mercado RD | ¡Todo lo que necesitas!"><img class="logo" src="build/img/logo.png" alt="logo"></a>
                <div class="menu-desplegable">
                    <i class="fad fa-bars" onclick="menu_activo()"></i>
                </div>
                <div class="menu-principal">
                    <div class="enlaces">
                        <a href="#" title="Tiendas"><i class="fad fa-store"></i></a>
                        <a href="#" title="Centro de ayuda"><i class="fas fa-user-headset"></i></a>
                    </div>
                    <form action="" method="post">
                        <div class="input-buscar">
                            <i class="fas fa-search"></i>
                            <input type="search" name="buscar" id="buscar" placeholder="Que deseas buscar?">
                        </div>
                    </form>
                    <div class="botones">
                        <?php
                            if(isset($_SESSION['user'])){
                        ?>
                        <a href="./publicarAnuncio.php?title=Publicar" class="boton-principal"><i class="fad fa-plus-circle"></i> Publicar</a>
                        <?php
                            }else{

                        
                        ?>
                        <a href="./login.php?title=Inicia sesión | Mercado RD" class="boton-principal"><i class="fad fa-door-open"></i> Iniciar</a>
                        <?php
                        
                            }
                        ?>
                    </div>
                    <?php
                        if(isset($_SESSION['user'])){
                    ?>
                    <div class="action">
                        <div class="perfil">
                            <?php if(isset($_SESSION['fotoperfil'])==null){ ?>
                            <div onclick="dropdown()" class="img" style="background-image: url('build/img/user.svg');"></div>
                            <?php }else{ ?>
                            <div onclick="dropdown()" class="img" style="background-image: url('build/fotos/<?php echo( $_SESSION['fotoperfil']).'.jpg'; ?>);"></div>
                            <?php } ?>
                        </div>
                        <div class="dropdown">
                            <h3><?php echo $_SESSION['nombre']?></h3>
                            <ul>
                                <li><a href="perfilUsuario.php?title=<?php echo $_SESSION['nombre']?>"><i class="fad fa-user-circle"></i> Mis anuncios</a></li>
                                <li><a href="#"><i class="far fa-comment-lines"></i> Chat</a></li>
                                <li><a href="editarUsuario.php"><i class="fad fa-user-edit"></i> Editar tu perfil</a></li>
                                <li><a href="#"><i class="fad fa-cog"></i> Configuración</a></li>
                                <li><a href="php/cerrarsesion.php"><i class="fad fa-sign-in-alt"></i> Cerrar sesión</a></li>
                            </ul>
                        </div>
                    </div>
                    <?php
                        }
                    ?>
                </div>
            </nav>
        </div>
    </header>
<?php

    }

?>