<?php
error_reporting(0);
include('includes/configg.php');
?>

<!DOCTYPE HTML>
<html>
  <head>
    <title>Blood Bank & Oragn Transplanting System</title>
    <link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
    <link href='http://fonts.googleapis.com/css?family=Ropa+Sans' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="css/responsiveslides.css">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src="js/responsiveslides.min.js"></script>
      <script>
        // You can also use "$(window).load(function() {"
          $(function () {
      
            // Slideshow 1
            $("#slider1").responsiveSlides({
              maxwidth: 1600,
              speed: 600
            });
      });
      </script>
  </head>
  <body>
    <!--start-wrap-->
    
      <!--start-header-->
      <div class="header">
        <div class="wrap">
        <!--start-logo-->
        <div class="logo">
          <a href="" style="font-size: 30px;">Blood Bank & Organ Transplanting system</a>
        </div>
        <!--end-logo-->
        <!--start-top-nav-->
        <div class="top-nav">
          <ul>
            <li class="active"><a href="homepage2.php">Home</a></li>
            
            <li><a href="patient/contact_p.php">contact</a></li>
            <li><a href="">Request</a></li>
                  <li><a href="patient/choose.php">Volunteers</a></li>
                  <li><a href="patient/logout2.php">Log out</a></li>


          </ul>         
        </div>
        <div class="clear"> </div>
        <!--end-top-nav-->
      </div>
      <!--end-header-->
    </div>
    <div class="clear"> </div>
      <!--start-image-slider---->
          <div class="image-slider">
            <!-- Slideshow 1 -->
              <ul class="rslides" id="slider1">
                <li><img src="images/slider-image1.jpg" alt=""></li>
                <li><img src="images/slider-image2.jpg" alt=""></li>
                <li><img src="images/slider-image1.jpg" alt=""></li>
              </ul>
             <!-- Slideshow 2 -->
          </div>
          <!--End-image-slider---->
        <div class="clear"> </div>
        <div class="content-grids">
          <div class="wrap">
          <div class="section group">
                
              
        <div class="listview_1_of_3 images_1_of_3">
          <div class="listimg listimg_1_of_2">
              <img src="images/grid-img3.png">
          </div>
          <div class="text list_1_of_2">
              <h3>Patients</h3>
              <p>Register & Book Appointment</p>
              <div class="button"><span><a href="patient/book-appointment.php">Click Here</a></span></div>
            </div>
        </div>  

        
      </div>
       </div>
       </div>
       
       
    <!--end-wrap-->
  </body>
</html>

