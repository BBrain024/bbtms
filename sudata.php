<?php
session_start();

 include('includes/dbconnect.php');

if(isset($_POST['SignUp'])){
$First_name=$_POST['F_Name'];
$Surname=$_POST['Surname'];
$Email=$_POST['email'];
$Gender=$_POST['Gender'];
$Code=$_POST['code'];
$Telephone=$_POST['Number'];
$Region=$_POST['region'];
$Locality=$_POST['Locality'];
$Username=$_POST['username'];
$Pass=md5($_POST['P_word']);
$Confirmpass=md5($_POST['CP_word']);
	

            //validation

if($First_name==''||$Surname==''||$Email==''||$Gender==''||$Telephone==''||$Region==''||$Locality==''||$Username==''||$Pass==''||$Confirmpass==''){
echo "<script>alert('Please  All Fields are Required')</script>";
echo "<script>window.open('su.php','_SELF')</script>";


}

if($Pass==$Confirmpass){

$query="INSERT INTO usersu (Firstname,Surname, Email,Gender,code,Phonenumber,Region,Locality,Username,Password,Confirmpassword) VALUES ('$First_name','$Surname','$Email','$Gender','$Code','$Telephone','$Region','$Locality','$Username','$Pass','$Confirmpass')";

$Check_username="SELECT * FROM usersu WHERE Username='$Username'";
$run=mysqli_query($connect,$Check_username);

if (mysqli_num_rows($run)>0) {

	echo "<script>alert('Username $Username already exists,please enter another Username!')</script>";
    echo "<script>window.open('su.php','_SELF')</script>";
    exit();
}

if (mysqli_query($connect, $query))
{

	echo "<script>alert('Registration Successful!')</script>";

	echo "<script>window.open('map.php','_SELF')</script>";
}
else
{
	echo "<script>alert('Registration Failed!')</script>";
	
}
}
}
?>
<?php 
$_SESSION["Locality"];
?>