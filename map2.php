
 <!DOCTYPE html>
<html lang="en">
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

  <meta charset="utf-8">
  <meta name="viewport" content="initial-scale=1.0, user-scaleable=no">
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDLqZ-9oMNENcqGYvziCJ0UXvzZUAJ9Lvw&libraries=places"></script>
<body>
  <div id="map"></div>
<script>
 
  var map;
  var infowindow;

  function intialize(){
    var center= google.maps.LatLng(Lat:8.0593,Lng:-1.7296);
    map= new google.maps.Map(document.getElementById('map'),{
      center:center,
      zoom:13
    });
    var request={
      location: center,
      radius: 8047,
      types:['hospital']
    };
    infowindow = new google.maps.infowindow();
    var service =new google.maps.places.PlacesService(map);
    service.nearbySearch(request, callback);
    }
    function callback(results, status){
      if (status == google.maps.places.PlacesServiceStatus.OK){
        for (var i =0; i< results.length; i++){
          createMarker(results[i]);

        }
      }
    }
  function createMarker(place){
    var palceloc =place.geometry.location;
    var marker = new google.maps.Marker({ 
      map:map,
      position: place.geometry.location
    });
    google.maps.event,addListener(marker, 'click', function(){
      infowindow.setContent(place.name);
      infowindow.open(map, this);
    });
  }

  google.maps.event.addDomListener(window,'load',initialize);
</script>

 
</body>
</html>