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
$sql="SELECT id,nombre FROM empresa";
$result=mysqli_query($conn,$sql);

if(mysqli_num_rows($result)>0)
{
while($row=mysqli_fetch_assoc($result))
{
echo "id:".$row["id"]."<br>Nombre:".$row["nombre"]."<br><br>";
}
}
else
{
echo "0 results";
}
mysqli_close($conn);
echo "<a href='consulta3.html'>Regresar</a>";
?>