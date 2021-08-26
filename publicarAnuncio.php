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
        <form action="" method="post" class="formulario-publicar">
            <div class="group-input">
                <div class="input nombreInput">
                    <label for="nombreAnuncio">Título del anuncio</label>
                    <input type="text" name="nombre" id="nombreAnuncio" required placeholder="Ej: Vendo MacBook Air" autocomplete="off">
                </div>
                <div class="input precioInput">
                    <label for="precioAnuncio">Precio</label>
                    <input type="number" name="precio" id="precioAnuncio" placeholder="Ej: RD 60,000">
                </div>
            </div>
            <div class="textAreas">
                <label for="descripcionAnuncio">Descripción del anuncio</label>
                <textarea class="error" name="descripcion" id="descripcionAnuncio" cols="30" rows="10" placeholder="Describe lo que vendes"></textarea>
            </div>
            <div class="group-input">
                <div class="input">
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
                <input type="file" class="form-control-file" id="exampleFormControlFile1" name="foto[]" accept="image/*" multiple onchange="handleFiles(this.files)">
                <div class="listFile" id="fileList">
                </div>
            </div>
            <div class="btn-publicar">
                <button type="submit" class="boton-principal"><i class="fad fa-plus-circle"></i> Publicar</button>
            </div>
        </form>
    </div>
    <?php
        echo footer();
    ?>
    <script src="build/js/bundle.js"></script>
</body>
</html>