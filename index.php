<?php
    include('php/db.php');
    include('php/head.php');
    include('php/header.php');
    include('php/aside.php');
?>
<!DOCTYPE html>
<html lang="es">
    <?php
        echo head();
        echo cabecera();
    ?>
    <div class="contenido-principal">
    <?php
        echo aside();
    ?>
        <main class="articulos">
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
        </main>
    </div>
    <script src="src/js/app.js"></script>
</body>
</html>