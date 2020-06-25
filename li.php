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
<div class="logo">Blood Bank & Organ Transplanting System </div>
<div class="menu-area">
<li ><a href="index.php">Back</a> </li>
</div>
<div class="loginbox"><br/>
<img src="images/user.png" class="user" >
<h1>Login Here</h1>
<form action='li.php' method='post'>
	<p> Username</p>
	<input type="text" name="username" placeholder="Enter Username"><br/>
	<p>Password</p>
	<input type="Password" name="Password" placeholder="Enter Password"><br/>
	<input type="submit" name="submit" value="Login"><br/>
	<a href="forgot-password2.php">Forgot your password?</a><br/>
	<a href="su.php">Don't have any account?</a><br/>

	<span id=ff><h5>Copyright &copy 2020-Blood Bank & Organ Transplanting Online All Rights Reserved | Privacy Policy| Terms of use<br/>
	sponsored by BiggyBrain.com.Powered by Sarfo computers</h5></span>
</form><br/><br/><br/><br/>

		<footer>
	
</footer>

</div>	

<?php
 include('includes/dbconnect.php');
/*
start_session();
if(isset($_SESSION['username'])){
echo "<script>window.open('homepage.php','_SELF')</script>";
}else
{
	if($Username==$_POST['username'] && $Pass==md5($_POST['Password'])){
		$_SESSION['username']=$Username;
echo"<script>window.open('homepage.php,'_SELF')</script>";
}else

	echo "<script>alert('Username or Password incorrect')</script>";
	echo"<script>window.open('li.php','_SELF')</script>";



*/
if(isset($_POST['submit'])){
$Username=$_POST['username']; 
$Pass=md5($_POST['Password']);

 if($Username==''|| $Pass==''){
echo "<script>alert('Username or Password not Entered')</script>";
exit();
}
$check_query="SELECT * FROM usersu WHERE Username='$Username' AND Password='$Pass' ";

$run=mysqli_query($connect,$check_query);


if(mysqli_num_rows($run)>0){

	echo "<script>window.open('homepage.php','_SELF')</script>";
}
else
echo"<script>alert('Please Username or Password is incorrect')</script>";
}
?>

</body>
</html>
