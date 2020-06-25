<?php
include('includes/config3.php');
if(isset($_POST['submit'])){
$ID=$_POST['id']; 
$Pass=md5($_POST['Password']);

 if($ID==''|| $Pass==''){
echo "<script>alert('ID or Password not Entered')</script>";
echo "<script>document.location = 'B-choice.php';</script>";
exit();// This is the b_collector php login code
}
$sql= "SELECT * FROM b_collector WHERE uniqueID='$ID' AND password='$Pass'";
$run=mysqli_query($connect, $sql);  

// $rows = mysqli_num_rows($run);


 if(mysqli_num_rows($run)>0)
{

	echo "<script>document.location = 'collection-reg.php';</script>";
}
else{
echo"<script>alert('Please ID or Password is incorrect')</script>";
echo "<script>document.location = 'B-choice.php';</script>";
}
}
// Let me take you to the form section 
// I am taking you to the da
/*
	include('includes/config 2.php');

if(isset($_POST['submit'])){
$ID=$_POST['id']; 
$Pass=md5($_POST['Password']);

 if($ID==''|| $Pass==''){
echo "<script>alert('ID or Password not Entered')</script>";
exit();
}
$sql="SELECT * FROM b_collector WHERE uniqueID=':ID' AND password=':Pass' ";
$query = $dbh -> prepare($sql);
$query-> bindParam(':ID', $ID, PDO::PARAM_STR);
$query-> bindParam(':Pass', $Pass, PDO::PARAM_STR);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
if($query->rowCount() > 0)
{

	echo "<script>document.location = 'collection-reg.php';</script>";
}
else{
echo"<script>alert('Please ID or Password is incorrect')</script>";
}
}*/
	?>