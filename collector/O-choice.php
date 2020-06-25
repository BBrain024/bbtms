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
<form action='O-choice.php' method='post'>
	<p> User ID</p>
	<input type="text" name="id" placeholder="Enter ID"><br/>
	<p>Password</p>
	<input type="Password" name="Password" placeholder="Enter Password"><br/>
	<input type="submit" name="submit" value="Login"><br/>
	


	<span id=ff><h5>Copyright &copy 2020-Blood Bank & Organ Transplanting Online All Rights Reserved | Privacy Policy| Terms of use<br/>
	sponsored by BiggyBrain.com.Powered by Sarfo computers</h5></span>
</form><br/><br/><br/><br/>

		<footer>
	
</footer>

</div>	
<?php
	include('includes/config 3.php');

if(isset($_POST['submit'])){
$ID=$_POST['id']; 
$Pass=md5($_POST['Password']);

 if($ID==''|| $Pass==''){
echo "<script>alert('ID or Password not Entered')</script>";
exit();
}
$check_query="SELECT * FROM o_collector WHERE uniqueID='$ID' AND password='$Pass' ";

$run=mysqli_query($connect,$check_query);


if(mysqli_num_rows($run)>0){

	echo "<script>window.open('collection-reg2.php','_SELF')</script>";
}
else
echo"<script>alert('Please ID or Password is incorrect')</script>";
}
	?>

</body>
</html>
