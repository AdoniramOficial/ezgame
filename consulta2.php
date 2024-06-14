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
$sql="SELECT id,nombre,APaterno,AMaterno,dirreccion,telefono,correo,pais FROM cliente";
$result=mysqli_query($conn,$sql);

if(mysqli_num_rows($result)>0)
{
while($row=mysqli_fetch_assoc($result))
{
echo "id:".$row["id"]."<br>Nombre:".$row["nombre"]."<br>Apellido paterno:".$row["APaterno"]."<br>Apellido Materno:".$row["AMaterno"]."<br>Direccion:".$row["dirreccion"]."<br>Telefono:".$row["telefono"]."<br>Correo:".$row["correo"]."<br>Pais:".$row["pais"]."<br><br>";
}
}
else
{
echo "0 results";
}
mysqli_close($conn);
echo "<a href='consulta2.html'>Regresar</a>";
?>