<?php
include "conexion.php";
$tipo = $_POST["tipo"];
if($tipo==1){
    $sql = "SELECT * FROM habitaciones WHERE categoria='STANDARD' ORDER BY categoria";
}
elseif($tipo==2){
    $sql = "SELECT * FROM habitaciones WHERE categoria='SELECT' ORDER BY categoria";
}
elseif($tipo==4){
    $sql = "SELECT * FROM habitaciones WHERE categoria='PREMIUM' ORDER BY categoria";
}
elseif($tipo==3){
    $sql = "SELECT * FROM habitaciones WHERE tipo='HABITACION' ORDER BY tipo";
}
elseif($tipo==6){
    $sql = "SELECT * FROM habitaciones WHERE lugar='PUNO' ORDER BY lugar";
}
elseif($tipo==7){
    $sql = "SELECT * FROM habitaciones WHERE lugar='CUSCO' ORDER BY lugar";
}
elseif($tipo==5){
    $sql = "SELECT * FROM habitaciones WHERE tipo='HOTEL' ORDER BY tipo";
}else{
    $sql = "SELECT * FROM habitaciones ORDER BY categoria";
}
//ejecutar pedido
$resultado = $con->query($sql);

//crear arreglo asociativo
$habitaciones = array();
if ($resultado->num_rows > 0) {
    while($fila = $resultado->fetch_assoc()) {
        //Aquí añadimos cada fila como un item del arreglo asociativo
       $clave=$fila["id"];
       $habitaciones[$clave]=array(
            "nombre"=>$fila["nombre"],
            "lugar"=>$fila["lugar"],
            "categoria"=>$fila["categoria"],
            "tipo"=>$fila["tipo"],
            "precioa"=>$fila["precioantes"],
            "preciou"=>$fila["preciounitario"],
            "imagen"=>$fila["imagen"],
       );
    }
} else {
    echo "El pedido no ha devuelto nada";
}
$con->close();
echo json_encode($habitaciones);
?>