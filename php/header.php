<?php
    function cabecera()
    {
?>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Entra ya!!! Vende y compra lo que quieras,
    publica tus productos o servicios en el mercado virtual mas completo y con mejores servicios de la República Dominicana">
    <meta name="google" content="nositelinkssearchbox" >
    <meta property="og:locale" content="es_ES">
    <meta property="og:title" content="Mercado RD">
    <meta property="og:type" content="store">
    <meta property="og:description" content="Entra ya!!! Vende y compra lo que quieras,
    publica tus anuncios o servicios en el mercado virtual mas completo y con mejores servicios de la República Dominicana">
    <meta property="og:url" content="">
    <meta property="og:image" content="src/img/logo.png">
    <meta property="og:site_name" content="Mercado RD">
    <link rel="stylesheet" href="build/css/app.css">
    <link rel="shortcut icon" type="image/x-icon" href="src/img/icono.ico">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <title>Mercado RD | ¡Todo lo que necesitas!</title>
</head>
<body>
    <header class="header">
        <div class="contenedor">
            <nav class="navegacion">
                <a href="index.php"><img class="logo" src="src/img/logo.png" alt="logo"></a>
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
                        <a href="#" class="boton-principal"><i class="fad fa-door-open"></i> Iniciar</a>
                        <a href="#" class="boton-principal"><i class="fad fa-plus-circle"></i> Publicar</a>
                    </div>
                    <div class="action">
                        <div class="perfil">
                            <div onclick="dropdown()" class="img" style="background-image: url('src/img/user.svg');"></div>
                        </div>
                        <div class="dropdown">
                            <h3>Miguel Angel</h3>
                            <ul>
                                <li><a href="#"><i class="fad fa-user-circle"></i> Mi perfil</a></li>
                                <li><a href="#"><i class="far fa-comment-lines"></i> Chat</a></li>
                                <li><a href="#"><i class="fad fa-cog"></i> Configuración</a></li>
                                <li><a href="#"><i class="fad fa-sign-in-alt"></i> Cerrar sesión</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
    </header>
<?php

    }

?>