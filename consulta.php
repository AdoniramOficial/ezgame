<html>
<head>
<title>Consultar</title><!--titulo de la pagina CONSULTAR-->
<style>
		
		 body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f0f0f0;
    }
    .container {
        width: 300px;
        height: 100px;
		margin: 100px auto;
        background-color: #D7FAFE;
        border: 1px solid #ccc;
        padding: 20px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    }

    .buttons button {
        margin: 5px;
        padding: 10px 20px;
        font-size: 16px;
        cursor: pointer;
		 background-color: #007bff;
        color: #fff;
        border: none;
    }
</style> 
	<meta charset="UTF=8">
</head>
<body background="fondo2.jpg">
<?php
$servername="localhost";
$username="root";
$password="";
$dbname="easygame";

//CREATE CONNECTION
$conn=mysqli_connect($servername,$username,$password,$dbname);

//CHECK CONNECTION

if(!$conn)
{
die("connection failed:".mysqli_connect_error());
}
$sql="SELECT id,nombre,APaterno,AMaterno,curp,dirreccion,telefono,correo FROM empleado";
$result=mysqli_query($conn,$sql);

if(mysqli_num_rows($result)>0)
{
while($row=mysqli_fetch_assoc($result))
{
echo "id:".$row["id"]."<br>Nombre:".$row["nombre"]."<br>Apellido paterno:".$row["APaterno"]."<br>Apellido Materno:".$row["AMaterno"]."<br>Curp:".$row["curp"]."<br>Direccion:".$row["dirreccion"]."<br>Telefono:".$row["telefono"]."<br>Correo:".$row["correo"]."<br><br>";
}
}
else
{
echo "0 results";
}
mysqli_close($conn);
?>
<div class="container">
	<center>
		<P>FIN DEL LA CONSULTA DESEA REGRESAR</P>
		<div class="buttons">
		<form action="consulta.html" method="get">
		<button class="return-button" onclick="window.location.href = 'consulta.html';">Regresar</button> 
	</form>
			</div>
		</center>
		
	</div>
	</body>
	</html>