<?php
session_start();
error_reporting(0);
include('includes/dbconnect.php');
//Checking Details for reset password
if(isset($_POST['submit'])){
$F_name=$_POST['Firstname'];
$email=$_POST['Email'];
$query=mysqli_query($con,"SELECT * FROM usersu WHERE Firstname='$F_name' and Email='$email'");
$row=mysqli_num_rows($query);
if($row>0){

header('location:reset-password2.php');
$_SESSION['Firstname']=$name;
$_SESSION['Email']=$email;
} else {
echo "<script>alert('Invalid details. Please try with valid details');</script>";
echo "<script>window.location.href ='forgot-password2.php'</script>";


}

}
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>

<link rel="stylesheet" type="text/css" href="css/font.awesome.css">
	<link rel="stylesheet" type="text/css" href="css/wp.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>
<header class="fix"><video class="vid-bg" autoplay  loop  muted src="videos/smoke.mp4" >
</video></header>

<div class="nav-area">
<div class="logo">Blood Bank & Organ Transplanting </div>
<div class="menu-area">
<li ><a href="li.php">Back</a> </li>
</div>
<div class="loginbox"><br/>
<img src="images/user.png" class="user" >
<h1>Password Recovery</h1>
<form action='reset-password2.php' method='post'>
	<p> First name</p>
	<input type="text" name="Firstname" placeholder="Enter Firstname"><br/>
	<p>Email</p>
	<input type="text" name="Email" placeholder="Enter Email"><br/>
	<input type="submit" name="submit" value="Submit"><br/>
	

	<span id=ff><h5>Copyright &copy 2020-Blood Bank & Organ Transplanting Online All Rights Reserved | Privacy Policy| Terms of use<br/>
	sponsored by BiggyBrain.com.Powered by Sarfo computers</h5></span>
</form><br/><br/><br/><br/>

		<footer>
	
</footer>

</div>	
