<?php
include('includes/config2.php');
if(isset($_POST['Save']))
  {
$Dname=$_POST['Dname'];
$Cname=$_POST['Cname'];
$Pcol=$_POST['Pcol'];
$Otype=$_POST['Otype'];
$tag=$_POST['tag'];
$Cdate=$_POST['Cdate'];
$Edate=$_POST['Edate'];
$Tele=$_POST['Tele'];
$sql="INSERT INTO org_rec (Name_of_Donor,Name_of_Collector,Place_of_Collection,Organ_Type,Organ_Tag_number,Date_of_collection,Date_of_Expiry,tele) VALUES(:Dname,:Cname,:Pcol,:Otype,:tag,:Cdate,:Edate,:Tele)";
$query = $dbh->prepare($sql);
$query->bindParam(':Dname',$Dname,PDO::PARAM_STR);
$query->bindParam(':Cname',$Cname,PDO::PARAM_STR);
$query->bindParam(':Pcol',$Pcol,PDO::PARAM_STR);
$query->bindParam(':Otype',$Otype,PDO::PARAM_STR);
$query->bindParam(':tag',$tag,PDO::PARAM_STR);
$query->bindParam(':Cdate',$Cdate,PDO::PARAM_STR);
$query->bindParam(':Edate',$Edate,PDO::PARAM_STR);
$query->bindParam(':Tele',$Tele,PDO::PARAM_STR);
$query->execute();
$lastInsertId = $dbh->lastInsertId();
if($lastInsertId)
{
$msg="Your info uploaded successfully";
header("collection-reg2.php");
}
else 
{
$error="Something went wrong. Please try again";
}

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
		<form method="post" action="collection-reg2.php" style="width: 325px;">
	<table>
			<tbody><tr>
				<td>Name of Donor:<span style="color:red">*</span><br><br><br></td>
				<td><input type="text" name="Dname" autofocus="Dname" required><br><br><br></td>
			</tr>

			<tr>
				<td>Name of Collector:<span style="color:red">*</span><br><br><br></td>
				<td><input type="text" name="Cname"  required><br><br><br></td>
			</tr>

       <tr>
			<td>Place of collection:<span style="color:red">*</span><br><br><br></td>	
			<td><input type="text" name="Pcol" required><br><br><br></td>
			</tr>

			<tr>
				<td>Blood Type:<span style="color:red">*</span><br><br><br></td>
				<td><select name="Otype"><option selected="selected" value="" hidden="">Select</option>
                                         <?php $sql = "SELECT * from  tbltranstype";
                                          $query = $dbh -> prepare($sql);
                                          $query->execute();
                                          $results=$query->fetchAll(PDO::FETCH_OBJ);
                                          $cnt=1;
                                          if($query->rowCount() > 0)
                                           {
                                             foreach($results as $result)
                                              {               ?>  
                                          <option value="<?php echo htmlentities($result->Transplant);?>"><?php echo htmlentities($result->Transplant);?></option>
                                              <?php }} ?>
                                         </select><br><br><br></td>
                
			</tr>


			<tr>
				<td>Organ Tag No:<span style="color:red">*</span><br><br><br></td>
				<td><input type="text" name="tag" required><br><br><br>
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