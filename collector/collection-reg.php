<?php 
include('includes/config2.php');
if(isset($_POST['Save']))
  {
$Dname=$_POST['Dname'];
$Cname=$_POST['Cname'];
$Pcol=$_POST['Pcol'];
$Btype=$_POST['Btype'];
$tag=$_POST['tag'];
$Bvolume=$_POST['Bvolume'];
$Cdate=$_POST['Cdate'];
$Edate=$_POST['Edate'];
$Tele=$_POST['Tele'];
$sql="INSERT INTO  bld_rec(Name_of_Donor,Name_of_Collector,Place_of_Collection,Blood_Type,Blood_Tag_number,Blood_Volume,Date_of_collection,Date_of_Expiry,tele) VALUES(:Dname,:Cname,:Pcol,:Btype,:tag,:Bvolume,:Cdate,:Edate,:Tele)";
$query = $dbh->prepare($sql);
$query->bindParam(':Dname',$Dname,PDO::PARAM_STR);
$query->bindParam(':Cname',$Cname,PDO::PARAM_STR);
$query->bindParam(':Pcol',$Pcol,PDO::PARAM_STR);
$query->bindParam(':Btype',$Btype,PDO::PARAM_STR);
$query->bindParam(':tag',$tag,PDO::PARAM_STR);
$query->bindParam('Bvolume',$Bvolume,PDO::PARAM_STR);
$query->bindParam(':Cdate',$Cdate,PDO::PARAM_STR);
$query->bindParam(':Edate',$Edate,PDO::PARAM_STR);
$query->bindParam(':Tele',$Tele,PDO::PARAM_STR);
$query->execute();
$lastInsertId = $dbh->lastInsertId();
if($lastInsertId)
{
 $msg="Your info uploaded successfully";
 header("collection-reg.php");
}
else 
{
$error="Something went wrong. Please try again";
}

// Authorisation details.
	$username = "samueladusarfo024@gmail.com";
	$hash = "02594b37ad7c98b5440a69dd1e9f079353d7cba9ebf26857f3096696f260ac9d";

	// Config variables. Consult http://api.txtlocal.com/docs for more info.
	$test = "0";

	// Data for text message. This is the text message data.
	$sender = "BBOTS"; // This is who the message appears to be from.
	$numbers = "$Tele"; // A single number or a comma-seperated list of numbers
	$message = "Hello $Dname,we received your donation.Thank you and God bless you.";
	// 612 chars or less
	// A single number or a comma-seperated list of numbers
	$message = urlencode($message);
	$data = "username=".$username."&hash=".$hash."&message=".$message."&sender=".$sender."&numbers=".$numbers."&test=".$test;
	$ch = curl_init('http://api.txtlocal.com/send/?');
	curl_setopt($ch, CURLOPT_POST, true);
	curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
	$result = curl_exec($ch); // This is the result from the API
	curl_close($ch);
}

?>


<!DOCTYPE html>

<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="css/wp.css">
	<link rel="stylesheet" type="text/css" href="css/su.css">
	<style type="text/css">
		a{
			text-decoration: none;
		}
			.menu-area{
  float: right;
  list-style: none;
  margin: 25px;
}

.menu-area li{
  display: inline-block;
  margin: 0 4px;
  background-color: tomato;
  border-radius: 20px;
}
.menu-area li:hover{
  cursor: pointer;
}
.menu-area li a{
  text-decoration: none;
  color: #fff;
  padding: 5px 12px;
  letter-spacing: 2px;
}
.menu-area li.active a{
  color: tomato;
}
.menu-area li a:hover{
  color:black;
  cursor: pointer;
}


.logo{
  margin: 10px 50px;
  height: 55px;
  float: left;
  color: #fff;
  font-size: 35px;
  text-transform: uppercase;
}
</style>
</head>
<body>
<header class="fix"><video class="vid-bg" autoplay  loop  muted src="videos/smoke.mp4" >
</video></header>

<div class="nav-area">
<div class="logo">Blood Bank & Organ Transplanting System </div>
<div class="menu-area">
<li ><a href="index.php">Back</a> </li>
</div>

<div class="loginbox">
  <h1>Register</h1>
		<form method="post" action="collection-reg.php" style="width: 325px;">
	<table>
			<tbody><tr>
				<td>Name of Donor:<span style="color:red">*</span><br><br></td>
				<td><input type="text" name="Dname" autofocus="Dname" required><br><br></td>
			</tr>

			<tr>
				<td>Name of Collector:<span style="color:red">*</span><br><br></td>
				<td><input type="text" name="Cname"  required><br><br></td>
			</tr>

       <tr>
			<td>Place of collection:<span style="color:red">*</span><br><br></td>	
			<td><input type="text" name="Pcol" required><br><br></td>
			</tr>

			<tr>
				<td>Blood Type:<span style="color:red">*</span><br><br></td>
				<td><select name="Btype"><option selected="selected" value="" hidden="">Select</option>
                                       <?php $sql = "SELECT * from  tblbloodgroup ";
                                      $query = $dbh2 -> prepare($sql);
                                      $query->execute();
                                      $results=$query->fetchAll(PDO::FETCH_OBJ);
                                      $cnt=1;
                                      if($query->rowCount() > 0)
                                           { 
                                                 foreach($results as $result)
                                           {               ?>  
                                       <option value="<?php echo htmlentities($result->BloodGroup);?>"><?php echo htmlentities($result->BloodGroup);?></option>
                                            <?php }} ?>
				</select><br><br></td>
                
			</tr>


			<tr>
				<td>Blood Tag No:<span style="color:red">*</span><br><br><br></td>
				<td><input type="text" name="tag" required><br><br><br>
				</td>
			</tr>
		
			<tr>
				<td>Blood Vloume:<span style="color:red">*</span><br><br><br></td>
				<td><input type="text" name="Bvolume" required><br><br><br>
				</td>
			</tr>
			
			<tr>
				<td>Date of Collection:<span style="color:red">*</span><br><br><br></td>
				<td><input type="Date" name="Cdate" required><br><br><br></td>
			</tr>
			
				<tr>
				<td>Telephone No:<span style="color:red">*</span><br><br><br></td>
				<td><input type="Tele" name="Tele" required><br><br><br>
				</td>
			</tr>

				<tr>
				<td>Date of Expiry:<span style="color:red">*</span><br><br><br></td>
				<td><input type="Date" name="Edate" required ><br><br><br></td>
			</tr>


			 <tr>
				<td><input type="reset" name="clear" value="clear"></td>
				<td><input type="submit" name="Save" value="Save"></td>
			</tr>
			
		</tbody></table>
		
	</form>
</div>
</body>
</html>