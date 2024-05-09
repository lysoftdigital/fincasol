<?php
//datos del servidor
// $server		="localhost";
// $username	="escaboga_user";
// $password	="Cardenas2023$";
// $bd			="escaboga_dbinmobiliario";

$server		="localhost";
$username	="root";
$password	="";
$bd			="db_fincasol";

//creamos una conexión
$conn = mysqli_connect($server, $username, $password, $bd);

//Chequeamos la conexión
if(!$conn){
	die("Conexión fallida:" . mysqli_connect_error());
}

//Chequeamos la conexión
if(!$conn){
	die("Conexión fallida:" . mysqli_connect_error());
}
?>