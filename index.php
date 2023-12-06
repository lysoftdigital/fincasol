<?php

include("funciones.php");

$config = obtenerConfiguracion();

$result_ciudades = ObtenerTodasLasCiudades();

$result_tipos = obtenerTodosLosTipos();

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FINCASOL - Venta y Alquiler en Inmuebles</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="estilo.css">
    <link rel="icon" href="./img/logoico.ico" type="image/x-icon">
</head>

<body class="home" id="home">
    <div class="container">
        <?php include("header.php");?>

        <h2 style="color: white; text-shadow: 4px 4px 8px rgba(0, 0, 0, 0.5);">Casas, terrenos y departamentos al mejor precio</h2>




        <div class="box-buscar-propiedades pos-inferior">
            <div class="box-interior">
                <p>Encuentra la propiedad que busca</p>
                <form action="busqueda.php" method="get">
                    <select name="ciudad" id="">
                        <option value="">Seleccione Ciudad</option>
                        <?php while ($row = mysqli_fetch_assoc($result_ciudades)) : ?>
                            <option value="<?php echo $row['id'] ?>">
                                <?php echo $row['nombre_ciudad'] ?>
                            </option>
                        <?php endwhile ?>
                    </select>
                    <select name="tipo" id="">
                        <option value="">Tipo de Propiedad</option>
                        <?php while ($row = mysqli_fetch_assoc($result_tipos)) : ?>
                            <option value="<?php echo $row['id'] ?>">
                                <?php echo $row['nombre_tipo'] ?>
                            </option>
                        <?php endwhile ?>
                    </select>
                    <div class="estado">
                        <span>
                            <input type="radio" value="Alquiler" name="estado" checked  ="true"> Alquiler
                        </span>
                        <span>
                            <input type="radio" value="Venta" name="estado"> Venta
                        </span>
                    </div>

                    <input type="submit" value="Buscar" name="buscar">
                </form>
            </div>
        </div>
        
        <footer class="inferior">
            <?php include("contenido-footer.php")?>

        </footer>

    </div>
</body>

<script src="script.js"></script>

</html>