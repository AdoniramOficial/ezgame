<?php 

$servername="localhost"; 

$username="root"; 

$password=""; 

$dbname="easygame";
$conexion = new mysqli($servername, $username, $password, $dbname);

// Verificar la conexión
if ($conexion->connect_error) {
    die("Error de conexión: " . $conexion->connect_error);
}

// Verificar si se ha enviado un ID para borrar
if(isset($_POST['id'])) {
    // Obtener el ID del dato a borrar
    $id_a_eliminar = $_POST['id'];

    // Consulta para borrar el dato con el ID especificado
    $sql = "DELETE FROM empresa WHERE id = $id_a_eliminar";

    // Ejecutar la consulta
    if ($conexion->query($sql) === TRUE) {
        echo "Dato eliminado correctamente";
    } else {
        echo "Error al eliminar dato: " . $conexion->error;
    }
}

// Cerrar la conexión
$conexion->close();
echo "<a href='eliminar2.html'>Regresar</a>";
?>