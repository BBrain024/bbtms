<?php
session_start();
//error_reporting(0);
include("includes/dbconnect.php");
// Code for updating Password
if(isset($_POST['change']))
{
$name=$_SESSION['Firstname'];
$email=$_SESSION['Email'];
$newpassword=md5($_POST['password']);
$query=mysqli_query($con,"UPDATE usersu SET Password='$newpassword' WHERE Firstname='$name' and Email='$email'");
if ($query){
echo "<script>alert('Password successfully updated.');</script>";
echo "<script>window.location.href ='li.php'</script>";
}
else
{
echo "<script>alert('Password updating was unsuccessful.');</script>";
}
}

?>
<!DOCTYPE html>
<html>
<head>
	<title></title>

<link rel="stylesheet" type="text/css" href="css/font.awesome.css">
	<link rel="stylesheet" type="text/css" href="css/wp.css">
	<link rel="stylesheet" type="text/css" href="css/main - rp.css">

				<script type="text/javascript">
function valid()
{
 if(document.passwordreset.password.value!= document.passwordreset.password_again.value)
{
alert("Password and Confirm Password Field do not match  !!");
document.passwordreset.password_again.focus();
return false;
}
return true;
}
</script>

</head>
<body>
<header class="fix"><video class="vid-bg" autoplay  loop  muted src="videos/smoke.mp4" >
</video></header>

<div class="nav-area">
<div class="logo">Blood Bank & Organ Transplanting </div>
<div class="menu-area">
<li ><a href="forgot-password2.php">Back</a> </li>
</div>
</div>
<div class="loginbox"><br/>
<img src="images/user.png" class="user" >
<h1>Password Reset</h1>
<form action='li.php' name="passwordreset" method="post" onSubmit="return valid();">
	<p> New Passord</p>
	<input type="password" name="password" placeholder="Password" required><br/>
	<p>Confirm New Password</p>
	<input type="password" name="password_again" placeholder="Confirm Password" required><br/>.<br />
								<span style="color:red;"><?php echo $_SESSION['errmsg']; ?><?php echo $_SESSION['errmsg']="";?></span>
	<input type="submit" name="change" value="Reset"><br/>
	

	<span id=ff><h5>Copyright &copy 2020-Blood Bank & Organ Transplanting Online All Rights Reserved | Privacy Policy| Terms of use<br/>
	sponsored by BiggyBrain.com.Powered by Sarfo computers</h5></span>
</form><br/><br/><br/><br/>

		<footer>
	
</footer>

</div>
</body>
</html>
