<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,intial-scale=1">
	<title></title>
	<link rel="stylesheet" type="text/css" href="css/font.awesome.css">
	<link rel="stylesheet" type="text/css" href="css/wp.css">
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

.nav-area{
  background: rgb(0,0,0,0.6);
  height: 65px;
  position: absolute;
  width: 100%

}
.logo{
  margin: 10px 50px;
  height: 60px;
  float: left;
  color: #fff;
  font-size: 35px;
  text-transform: uppercase;
}
	</style>
</head>
<body>
	<header class="fix"><video class="vid-bg" autoplay  loop  muted src="videos/smoke.mp4" >
</video>
<div class="nav-area">
<div class="logo">Blood Bank & Organ Transplanting Management System</div>
<div class="menu-area">
<li><a href="homepage.php">Back</a></li>
</div>
	</div>
	<div class="welcome2-text">
		<h2>Please Which Donation Would You Want to DO?</h2>
		<button class="btn btn-1"><a href="become-donar.php">Blood</a> </button>
		<button class="btn btn-2"><a href="become-donar2.php">Organ</a> </button>
	</div>
</header>
<div class="main-content-area fix">
</body>
</html>
