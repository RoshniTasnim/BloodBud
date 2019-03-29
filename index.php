<?php
error_reporting(0);
include('includes/config.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>BloodBud</title>
    <link rel="icon" type="image/png" href="images/logo.png"/>
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="css/modern-business.css" rel="stylesheet">

    
    <style>
    .navbar-toggler {
        z-index: 1;
    }
    
    @media (max-width: 576px) {
        nav > .container {
            width: 100%;
        }
    }

    .carousel-item.active,
    .carousel-item-next,
    .carousel-item-prev {
        display: block;
    }
    .slideshow-container {
    max-width: 1000px;
    position: relative;
    margin: auto;
    }

    </style>

</head>

<body  style="background-color: #464866">

    <!-- Navigation -->
<?php include('includes/header.php');?>
<?php include('includes/slider.php');?>
   
    <!-- Page Content -->
    <div class="container">
         <div class="container" style="color: #aaabb8">
        <marquee><h2 class="my-4" style="font-family: Century Gothic, sans serif"><i>BE A BLOOD DONOR, BE A HERO...</i></h2></marquee>
        </div>
        <!-- Marketing Icons Section -->
        <div class="row">
        <div class="card-group">
                <div class="card" style=" background-color: #c06c84;" >
                <div class="card-body text-white" >
                    <h3 class="card-header" style="text-align: center; background-color: #c06c84;">Our Mission</h3>
                   
                        <p class="card-text text-justify" style="padding: 2% 4% 2% 4%;">Nowadays a public awareness is noticed to donate blood. Many clubs, colleges, societies, offices, etc. organize blood donation camps on different occasions. It is a healthy gesture. We must keep this aptitude up at any cost. Our blood banks are running short of required blood. Our website may help them to enrich their capacity. </p>
                </div>
            </div> 
                <div class="card" style=" background-color: #f67280;">
                <div class="card-body text-white" >
                    <h3 class="card-header" style="text-align: center; background-color: #f67280;">Why Donate Blood</h3>
                   
                        <p class="card-text text-justify" style="padding: 2% 4% 2% 4%;">Blood donation is not hazardous and it proves to be a healthy habit that helps blood renewal. The volume of whole blood donation is 450 ml, almost 7.5% of the adult blood volume. It is compensated in a short period of time. A decision to donate your blood can save a life, or even several.</p>
                </div>
            </div>
                <div class="card" style=" background-color: #f8b195;">
                <div class="card-body text-white" >
                    <h3 class="card-header" style="text-align: center; background-color: #f8b195;">Who Can Donate</h3>
                   
                        <p class="card-text text-justify" style="padding: 2% 4% 2% 4%;">Eligible healthy donors (age 18 to 60 years, having Hb greater than 12 gm/dl, and weight above 50 kg) can donate 450 ml of blood. Males can donate at every 3 months and females can donate at every 4 months if they are free from any disease. Platelet apheresis donor’s age should be within 18 to 60 years, weight more than 50 kg and has not taken the medicine Plavix/Ticlid.for the last 14 days. </p>
                </div>
            </div>
        </div> </div>
        <!-- /.row -->

        <!-- Portfolio Section -->
        <hr>
        <div class="container">
        <div class="row-align-items-center">
     <div class="col-12 text-white">
        <h3>Some of Our Donors</h3>
         </div>
         
         </div>
        <div class="row">
                   <?php 
$status=1;
$sql = "SELECT * from tblblooddonars where status=:status order by rand() limit 6";
$query = $dbh -> prepare($sql);
$query->bindParam(':status',$status,PDO::PARAM_STR);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{ ?>

            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100" >
                    <a href="#"><img class="card-img-top img-fluid w-50" src="images/avatar.png" alt="" ></a>
                    <div class="card-block">
                        <h4 class="card-title"><a href="#"><?php echo htmlentities($result->FullName);?></a></h4>
<p class="card-text"><b>  Gender :</b> <?php echo htmlentities($result->Gender);?></p>
<p class="card-text"><b>Blood Group :</b> <?php echo htmlentities($result->BloodGroup);?></p>

                    </div>
                </div>
            </div>

            <?php }} ?>
          
 



        </div></div>
        <!-- /.row -->

        <!-- Features Section -->
        <div class="row text-white" >
            <div class="col-12" style=" background-color: #73937e; padding: 2% 4% 2% 4%;" >
                <h3 style="color:#f67280">BLOOD TIPS</h3> <hr>
          <p> PRECAUTIONS TO BE TAKEN PRIOR TO BLOOD DONATION</p>
                <ul>
                
                
<li>Not to donate on an empty stomach.</li>
<li>A gap of 20-30 minutes is desirable for a meal.</li>
<li>Good sleep on the previous night/day.</li>
<li>Not to donate if you have fever or taking any antibiotic or aspirin or blood thinner.</li>
<li>Drink water before donation.</li>
<li>Not to take alcohol 24 hours’ prior donation.</li>
<li>Not to smoke half an hour after blood donation.</li>
<li>Avoid vigorous exercise/playing tennis for at least 2-3 hours after donation as this can cause bleeding from the site of donation.</li>

                </ul>
                <p>A healthy diet helps ensure a successful blood donation, and also makes you feel better! </p>
            </div>
            
        </div> </div>
        <!-- /.row -->

        <hr>

        <!-- Call to Action Section -->
        <div class="row mb-4 text-white">
            <div class="col-md-6 offset-sm-1">
            <h3>How You Can Help</h3>
                <p>By registering through our website, you will get opportunity to donate according to your convenience and save lives.</p>
            </div>
            <div class="col-md-3 offset-sm-1">
                <a class="btn btn-lg btn-secondary btn-block text-white"  style=" background-color: #f76c6c;" href="become-donar.php" s>Become a Donor</a>
            </div>
        </div>

    </div>
    <!-- /.container -->

    <!-- Footer -->
  <?php include('includes/footer.php');?>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/tether/tether.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

</body>

</html>
