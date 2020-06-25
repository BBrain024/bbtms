
<!DOCTYPE html>
<html><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<title>Sign Up</title>
	<link rel="stylesheet" type="text/css" href="css/su.css">
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
</video>
<div class="nav-area">
<div class="logo">Blood Bank & Organ Transplanting System </div>
<div class="menu-area">
<li ><a href="index.php">Back</a> </li>
</div>
				<div class="loginbox"><br>
<img src="images/user.png" class="user"><br>
              <h1>Register</h1>
		<form method="post" action="sudata.php" style="width: 325px;">
	<table>
			<tbody><tr>
				<td>First Name:</td>
				<td><input type="text" name="F_Name" autofocus="F_Name" placeholder="First Name"></td>
			</tr>

			<tr>
				<td>Surname:</td>
				<td><input type="text" name="Surname" placeholder="Surname"></td>
			</tr>

       <tr>
			<td>Email:</td>	
			<td><input type="text" name="email" placeholder="Email"></td>
			</tr>

			<tr>
				<td>Gender:</td>
				<td><select name="Gender"><option selected="selected" value="" hidden="">Select Gender</option>
                                          <option value="Male">Male</option>
                                          <option value="Female">Female</option>
				</select></td>
                
			</tr>


			<tr>
				<td>Phone Number:</td>
				<td><select name="code"><option selected="selected">+233</option></select><input type="tel" name="Number" placeholder="Phone Number">
				</td>
			</tr>
			
			<tr>
				<td>Region:</td>
			<td> <select name="region"><option selected="selected" value="" hidden="">Select Region</option>
				                           <option value="Accra"> Greater Accra</option> 
				                           <option value="Ashanti">Ashanti</option>
				                           <option value="Volta">Volta</option>
				                           <option value="Eastern">Eastern</option>
				                           <option value="Western">Western</option>
				                           <option value="Northern">Northern</option>
				                           <option value="UpperWest">Upper West</option>
				                           <option value="UpperEast">Upper East</option> 
				                           <option value="Central">Central</option>
				                           <option value="Ahafo">Ahafo</option>
				                           <option value="Brong Ahafo">Brong Ahafo</option>
				                           <option value="Bono East">Bono East</option>
				                           <option value="North East">North East</option>
				                           <option value="Savannah">Savannah</option>
				                           <option value="Oti">Oti</option>
				                           <option value="Western North">Western North</option></select></td>
			</tr>
			<tr>
				<td>Locality:</td>
				<td><input type="text" name="Locality" placeholder="Locality"></td>
			</tr>
			
				<tr>
				<td>Username:</td>
				<td><input type="text" name="username" placeholder="Username"></td>
			</tr>

			<tr>
				<td>Password:</td>
				<td><input type="Password" name="P_word" placeholder="Password"></td>
			</tr>

		    	<tr>
				<td> Confirm Password:</td>
				<td><input type="Password" name="CP_word" placeholder="Confirm Password"></td>
			</tr>

			 <tr>
				<td><input type="reset" name="clear" value="clear"></td>
				<td><input type="submit" name="SignUp" value="Sign Up"></td>
			</tr>
			<tr>
				<td><p>Already a member? <a href="http://localhost:82/Blood%20Bank%20and%20Organ%20Transplanting%20system/bloodbank%20and%20transplanting%20management%20system/bbtms/li.php">Sign In</a></p></td>
			</tr>

		</tbody></table>
		<span id="ff"><h5>Copyright © 2020-Blood Bank &amp; Organ Transplanting Online All Rights Reserved | Privacy Policy| Terms of use<br>
	sponsored by BiggyBrain.com.Powered by Sarfo computers</h5></span>
	</form>
</div>


</body></html>