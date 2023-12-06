<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="estilo.css">
    <link rel="stylesheet" href="style.css">


    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
        }

        .float {
    position: fixed;
    width: 75px;
    height: 60px;
    bottom: 17px;
    left: 20px; /* Cambiado de "right" a "left" */
    background-color: #25d366;
    color: #FFF;
    border-radius: 50px;
    text-align: center;
    font-size: 40px;
    box-shadow: 2px 2px 3px #999;
    z-index: 100;
}

.float:hover {
    text-decoration: none;
    color: #25d366;
    background-color: #fff;
}

.my-float {
    margin-top: 11px;
}

footer {
    background-color: #000;
    color: #fff;
    text-align: center;
    position: fixed;
    bottom: 0;
    width: 100%;
    height: 20px;
    
    overflow: hidden; /* Evita que el contenido del pie de página sobresalga */
}

.footer-bar {
    background-color: #000;
    height: 5px;
    width: 100%; /* Ajusta el ancho según tus necesidades */
    margin: 0 auto; /* Centra la barra */
    border-radius: 10px; /* Ajusta el valor para hacer la barra ovalada */
}

h3 {
    margin-bottom: 5px;
    font-size: 16px;
}

.contact-info {
    font-size: 14px;
    margin-top: 5px;
}

.phone i, .email i {
    margin-right: 5px;
    color: #3498db;
}

.footer__copyright__text p {
    color: #cccccc;
    margin: 0;
    font-size: 10px;
}

.footer__copyright__text a {
    color: #ff6666;
    text-decoration: none;
    font-size: 10px;
}

    </style>
</head>
<body>
    <footer>
<script>
  window.addEventListener('mouseover', initLandbot, { once: true });
  window.addEventListener('touchstart', initLandbot, { once: true });

  var myLandbot;

  function initLandbot() {
    if (!myLandbot) {
      var s = document.createElement('script');
      s.type = 'text/javascript';
      s.async = true;
      s.addEventListener('load', function () {
        var myLandbot = new Landbot.Livechat({
          configUrl:
            'https://storage.googleapis.com/landbot.online/v3/H-1787257-5EC7IZ846L85LNRQ/index.json',
        });
      });
      s.src = 'https://cdn.landbot.io/landbot-3/landbot-3.0.0.js';
      var x = document.getElementsByTagName('script')[0];
      x.parentNode.insertBefore(s, x);

      // Agrega estilo para ajustar la posición del botón
      var style = document.createElement('style');
      style.innerHTML = '.custom-button { margin-top: 10px; }'; // Ajusta el valor según sea necesario
      document.head.appendChild(style);
    }
  }
</script>


    <div class="footer__copyright__text">
				<p>Copyright &copy; <script>document.write(new Date().getFullYear());</script> Todos los Derechos Reservados -<a href="https://lysoftdigital.vercel.app/" target="_blank"> Lysoft Digital</a></p>
			</div>
    </footer>
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<a href="https://api.whatsapp.com/send?phone=51989969317&text=Hola%21%20Quisiera%20m%C3%A1s%20informaci%C3%B3n%20sobre%20Varela%202." class="float" target="_blank">
<i class="fa fa-whatsapp my-float"></i>
</a>

</body>
</html>
