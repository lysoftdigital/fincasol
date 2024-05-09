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
    bottom: 90px;
    right: 20px; /* Cambiado de "right" a "left" */
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
<!-- Messenger Plugin de chat Code -->
    <div id="fb-root"></div>

    <!-- Your Plugin de chat code -->
    <div id="fb-customer-chat" class="fb-customerchat">
    </div>

    <script>
      var chatbox = document.getElementById('fb-customer-chat');
      chatbox.setAttribute("page_id", "155303744342286");
      chatbox.setAttribute("attribution", "biz_inbox");
    </script>

    <!-- Your SDK code -->
    <script>
      window.fbAsyncInit = function() {
        FB.init({
          xfbml            : true,
          version          : 'v19.0'
        });
      };

      (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = 'https://connect.facebook.net/es_LA/sdk/xfbml.customerchat.js';
        fjs.parentNode.insertBefore(js, fjs);
      }(document, 'script', 'facebook-jssdk'));
    </script>


    <div class="footer__copyright__text">
				<p>Copyright &copy; <script>document.write(new Date().getFullYear());</script> Todos los Derechos Reservados -<a href="https://lysoftdigital.com/" target="_blank"> Lysoft Digital</a></p>
			</div>
    </footer>
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<a href="https://api.whatsapp.com/send?phone=51989969317&text=Hola%21%20Quisiera%20m%C3%A1s%20informaci%C3%B3n%20sobre%20Las Propieades" class="float" target="_blank">
<i class="fa fa-whatsapp my-float"></i>
</a>

</body>
</html>
