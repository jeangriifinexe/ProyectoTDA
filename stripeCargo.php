<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Hoteles Casa Andina</title>
    <link rel="icon" type="image/png" href="imagenes/icono.png">
    <link rel="stylesheet" href="bootstrap-411/css/bootstrap.min.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
<?php
require_once "stripe-php/init.php";
//iniciar sesión
session_start();
$idProducto = $_GET['id'];
$_SESSION["idProducto"]=$idProducto;
//Recuperar los detalles del producto por cobrar
require "datosDetalle.php";
$nombre = $_SESSION["nombreP"];
$preciou = $_SESSION["preciouP"];

//Token privado
\Stripe\Stripe::setApiKey("sk_test_WmtUXJ2bw0q2HKA0pELGm7Y200fLlYNKeR");

\Stripe\Stripe::setVerifySslCerts(false);


if (!isset($_POST["stripeToken"]) || !isset($idProducto)) {
	header("Location: inicio.html");
	exit();
}

$token = $_POST['stripeToken'];
$email = $_POST['stripeEmail'];

$charge = \Stripe\Charge::create([
    'amount' => $preciou*100,
    'currency' => 'USD',
    'description' => $nombre,
    'source' => $token,
    
]);

echo '<div class="alert alert-success">
<strong>Pago exitoso</strong>$'. $preciou.' </div>';
echo '<a href="index.html" class="btn btn-primary" role="button">Volver a Home</a>';
?>
</body>
</html>
