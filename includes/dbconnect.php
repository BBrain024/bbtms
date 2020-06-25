<?php 
$connect=mysqli_connect("localhost","root","","users");

if (mysqli_connect_error()){
	echo "FAiled to connect to MYSQL".mysqli_connect_error();
}
else 
echo"";
?>