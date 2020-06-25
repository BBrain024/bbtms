<?php
session_start();
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,intial-scale=1">
	<title></title>
	<link rel="stylesheet" type="text/css" href="css/font.awesome.css">
	<link rel="stylesheet" type="text/css" href="css/wp.css">
	<link rel="stylesheet" type="text/css" href="css/main -map.css">

</head>
<div class="nav-area">
<div class="logo">Blood Bank & Organ Transplanting System </div>
<div class="menu-area">
<li ><a href="su.php">Back</a> </li>
</div>

<body>
	
	<iframe width="100%" height="500" src="https://maps.google.com/maps?q=<?php echo $_SESSION['Locality'];?>&output=embed"></iframe>


<div class><?php include('includes/footer_maps.php') ; ?>	
</div>
</body>


</html>
