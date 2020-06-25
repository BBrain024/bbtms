<!DOCTYPE html>
<html>
<head>
	<title></title>
	<style>
		*{
			margin:0;
		}
		#map{
			height: 655px;
			width: 100%;

		}
		   
	</style>
</head>
<body>
	<h1></h1>
	<div id="map"></div>
	<script>
		//Map Options
		function initMap(){
			var options={
				zoom:10,
				center:{lat:8.0593,lng:-1.7296}
			}
			//New Map
			var map=new
			google.maps.Map(document.getElementById('map'),options);

			//Add Marker
			/*var marker= new google.maps.Marker(
				{
				position{lat:6.7226,lng:-1.6445},
				map:map,
			});*/
		}
	</script>
 <script src="https://maps.googleapis.com/maps/api/js?key= AIzaSyCkdM60DQe71ZiS9d6z1-cTSFZD0W4RwfE&callback=initMap"
    async defer></script>
</body>
</html>