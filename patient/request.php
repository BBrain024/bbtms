<?php
session_start();
error_reporting(0);
include('includes/config 2.php');
if(isset($_POST['send']))
  {
$organ=$_POST['organ'];
$nat=$_POST['nat'];
$contactno='+233'.$_POST['contactno'];
$sql="INSERT INTO  request(organ,nationality,telephone) VALUES(:organ,:nat,:contactno)";
$query = $dbh->prepare($sql);
$query->bindParam(':organ',$organ,PDO::PARAM_STR);
$query->bindParam(':nat',$nat,PDO::PARAM_STR);
$query->bindParam(':contactno',$contactno,PDO::PARAM_STR);
$query->execute();
$lastInsertId = $dbh->lastInsertId();
if($lastInsertId)
{
$msg="Query Sent. We will contact you shortly";
}
else 
{
$error="Something went wrong. Please try again";
}

}
?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title></title>
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template -->
    <link href="css/modern-business.css" rel="stylesheet">

    <!-- Temporary navbar container fix -->
    <style>
    .navbar-toggler {
        z-index: 1;
    }
    
    @media (max-width: 576px) {
        nav > .container {
            width: 100%;
        }
    }
    </style>
    <style>
    .errorWrap {
    padding: 10px;
    margin: 0 0 20px 0;
    background: #fff;
    border-left: 4px solid #dd3d36;
    -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
    box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
}
.succWrap{
    padding: 10px;
    margin: 0 0 20px 0;
    background: #fff;
    border-left: 4px solid #5cb85c;
    -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
    box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
}
    </style>

</head>

<body>

    <?php include('');?>

    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <h1 class="mt-4 mb-3">Request</h1>

        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="../homepage2.php">Home</a>
            </li>
            <li class="breadcrumb-item active">Request</li>
        </ol>

        <!-- Content Row -->
        <div class="row">
            <!-- Map Column -->
              <div class="col-lg-8 mb-4">
                <h3>Send us a Message</h3>
                <?php if($error){?><div class="errorWrap"><strong>ERROR</strong>:<?php echo htmlentities($error); ?> </div><?php } 
        else if($msg){?><div class="succWrap"><strong>SUCCESS</strong>:<?php echo htmlentities($msg); ?> </div><?php }?>
                <form name="sentMessage"  method="post">
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>Organ:</label>
                           <td><select name="organ"  required data-validation-required-message="Please select organ."><option selected="selected" value="" hidden="">Select</option>
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
                                         </select>
                            <p class="help-block"></p>
                        </div>
                    </div>

                     <div class="control-group form-group">
                        <div class="controls">
                            <label>Nationality:</label>
                            <input type="email" class="form-control" id="email" name="nat" required data-validation-required-message="Please enter your nationality.">
                        </div>
                    </div>

                    <div class="control-group form-group">
                        <div class="controls">
                            <label>Phone Number:</label>
                            <input type="tel" class="form-control" id="phone" name="contactno"  required data-validation-required-message="Please enter your phone number.">
                        </div>
                    </div>
                   
                  
                    <div id="success"></div>
                    <!-- For success/fail messages -->
                    <button type="submit" name="send"  class="btn btn-primary">Send Request</button>
                </form>
            </div>

            <!-- Contact Details Column -->
                    
            </div>
        </div>
        <!-- /.row -->


    </div>
    <!-- /.container -->
<?php include('includes/footer 2.php');?>