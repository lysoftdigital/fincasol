<div class="contenedor-header">
    <header>
        <div class="logo">
            <a href="index.php">
            <h1><img src="./img/logo.png" alt="Ciudad" style="width: 100px; height: auto;" /></h1>

            <!-- <h1><img src="./img/logo.png" alt="Ciudad" /></h1> -->

                <p>Fincasol Inmobiliaria</p>
            </a>

        </div>

        <div class="nav-responsive" onclick="mostrarMenuResponsive()">
            <i class="fa-solid fa-bars"></i>
        </div>
        <nav class="" id="nav">
            <a href="index.php">Inicio</a>
            <a href="propiedades.php">Propiedades</a>
            <a href="contacto.php">Contacto</a>
        </nav>

        <div class="info-contacto">
            <span class="info">
                <a href="tel:<?php echo $config['telefono1'] ?>">
                    <i class="fa-solid fa-phone"></i> 
                    Llámanos:<span class="numero-telefono"><?php echo $config['telefono1'] ?> </span>
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