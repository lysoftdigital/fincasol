<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tu Página</title>

    <!-- Agrega los estilos CSS aquí -->
    <style>
        #nav a {
            font-size: 18px; /* Puedes ajustar el tamaño según tus necesidades */
            /* Otros estilos que desees aplicar */
        }
    </style>

</head>

<body>
    <div class="contenedor-header">
        <header>
            <div class="logo">
                <a href="index.php">
                    <h1><img src="./img/logo.png" alt="Ciudad" style="width: 150px; height: auto;" /></h1>
                </a>
            </div>

            <div class="nav-responsive" onclick="mostrarMenuResponsive()">
                <i class="fa-solid fa-bars"></i>
            </div>
            <nav class="" id="nav">
                <a href="index.php">INICIO</a>
                <a href="./nosotros.html">NOSOTROS</a>
                <a href="propiedades.php">PROPIEDADES</a>
                <a href="contacto.php">CONTÁCTO</a>
            </nav>

            <div class="info-contacto">
                <span class="info">
                    <a href="tel:<?php echo $config['telefono1'] ?>">
                        <i class="fa-solid fa-phone"></i> Llámanos:<span class="numero-telefono"><?php echo $config['telefono1'] ?> </span>
                    </a>
                </span>
                <span class="info">
                    <?php if ($config['facebook'] != null) : ?>
                        <a href="<?php echo $config['facebook'] ?>"><i class="fa-brands fa-facebook-f"></i></a>
                    <?php endif ?>
                </span>
                <span class="info">
                    <?php if ($config['twitter'] != null) : ?>
                        <a href="<?php echo $config['twitter'] ?>"><i class="fa-brands fa-twitter"></i></a>
                    <?php endif ?>
                </span>
            </div>
        </header>
    </div>

    <!-- Resto de tu contenido HTML -->

</body>

</html>
