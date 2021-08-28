<?php
    include('php/db.php');
    include('php/head.php');
    include('php/header.php');
    include('php/aside.php');
?>
<!DOCTYPE html>
<html lang="es">
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
    <meta property="og:image" content="build/img/logo.png">
    <meta property="og:site_name" content="Mercado RD">
    <link rel="stylesheet" href="build/css/app.css">
    <link rel="shortcut icon" type="image/x-icon" href="build/img/icono.ico">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <title>Mercado RD | ¡Todo lo que necesitas!</title>
</head>
    <?php
        echo cabecera();
    ?>
    <div class="contenido-principal">
    <?php
        echo aside();
    ?>
        <main class="articulos">
            <a href="#">
                <div class="card">
                    <div class="card-head" style="background-image: url('build/fotos/laptop');">
                        <div class="img-user" style="background-image: url('build/img/user.svg');"></div>
                    </div>
                    <div class="card-body">
                        <h2><span>RD$  </span>65,000</h3>
                        <h3>LAPTOP LENOVO LEGION 5 15ARHO5 AMD RYZEN 7</h3>
                    </div>
                </div>
            </a>
        </main>
    </div>
    <script src="src/js/app.js"></script>
</body>
</html>