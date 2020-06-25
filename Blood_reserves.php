<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="css/wp.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<style type="text/css">
	*{color:white;}
</style>
</head>
<body>
	<header class="fix"><video class="vid-bg" autoplay  loop  muted src="videos/smoke.mp4" >
</video></header>

<div class="nav-area">
<div class="logo">Blood Bank & Organ Transplanting System </div>
<div class="menu-area">
<li ><a href="homepage.php">Back</a> </li>
</div>
<br>
<br><br><br>

	<h1 style="text-align: center;">THE AVAILABLE BLOOD IN THE BLOOD BANK </h1>
<?php
/*include('dbconnect.php');*/
$connect=mysqli_connect("localhost","root","","otdms");
if (mysqli_connect_error()){
	echo "FAiled to connect to MYSQL".mysqli_connect_error();
}
/*mysqli_select_db('otdms');*/
	echo "<table width='1000' align='center' border='5'";
	echo "<tr bgcolor='red'>";
	echo "<th>id</th>";
	echo "<th>Name of Donor</th>";
	echo "<th>Name of Collector</th>";
	echo "<th>Place of Collection</th>";
	echo "<th>Blood Type</th>";
	echo "<th>Blood Tag number</th>";
	echo "<th>Blood Volume</th>";
	echo "<th>Date of Collection</th>";
	echo "<th>Date of Expiry</th>";
	$query= "SELECT * FROM bld_rec";

if ($run = mysqli_query($connect, $query)) {
    
    while($row = mysqli_fetch_assoc($run)){
	
	echo "<tr><td> ".$row['id']." <br><td>".$row['Name of Donor']."<br><td> ".$row['Name of Collector']."<br><td>".$row['Place of Collection']."<br><td>".$row['Blood Type']."<br><td>".$row['Blood Tag number']."<br><td>".$row['Blood Volume'].$row['Date of Collection'].$row['Date of Expiry']."<br></tr><br>";
	
	}
 
} else {
    echo "0 results";
}
echo "</table>";
mysqli_close($connect);
?>