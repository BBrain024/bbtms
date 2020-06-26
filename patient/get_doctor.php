<?php
include('includes/configg.php');
if(!empty($_GET["specilizationid"])) 
{

$sql=mysqli_query($con,"select id, doctorName from doctors where specilization='".$_GET['specilizationid']."'");

echo json_encode(mysqli_fetch_all($sql, MYSQLI_ASSOC));



}


if(!empty($_GET["id"])) 
{

 $sql=mysqli_query($con,"select docFees from doctors where id='".$_GET['id']."'");
 
 echo json_encode(mysqli_fetch_assoc($sql));

}

?>