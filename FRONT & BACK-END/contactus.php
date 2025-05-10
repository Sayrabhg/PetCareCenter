<?php
session_start();
function Connect()
{
	$dbhost = "localhost";
	$dbuser = "root";
	$dbpass = "";
	$dbname = "pet_care_center";
	//Create Connection
	$conn = new mysqli($dbhost, $dbuser, $dbpass, $dbname) or die($conn->connect_error);
	return $conn;
}
?>
<html>
  <head>
    <title> Contact </title>
  </head>
    <link rel="stylesheet" type = "text/css" href ="CSS/contactus.css">
    <link rel="stylesheet" type = "text/css" href ="CSS/bootstrap.min.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <body>
<?php
if (isset($_POST['submit'])){
$conn = Connect();
$Name = $conn->real_escape_string($_POST['name']);
$Email_Id = $conn->real_escape_string($_POST['email']);
$Mobile_No = $conn->real_escape_string($_POST['mobile']);
$Services = $conn->real_escape_string($_POST['Services']);
$Message = $conn->real_escape_string($_POST['message']);
$query = "INSERT into contact(Name,Email,Mobile,Breed,Message) VALUES('$Name','$Email_Id','$Mobile_No','$Services','$Message')";
$success = $conn->query($query);
if (!$success){
  die("Couldnt enter data: ".$conn->error);
}
if($success)
{
    echo "<div class='alert alert-success'>Thank You For Submitting Your Response...</div>";
}
$conn->close();
}
?>
    <div class="container" >
    <div class="col-md-5" style="float: none; margin: 0 auto;">
      <div class="form-area">
        <form method="post" action="" class="align">
        <br style="clear: both">
          <h3 style="margin-bottom: 25px; text-align: center; font-size: 30px;"> Contact Form</h3>
          <div class="form-group">
            <input type="text" class="form-control" id="name" name="name" placeholder="Name" required autofocus="">
          </div>
          <div class="form-group">
            <input type="email" class="form-control" id="email" name="email" placeholder="Email" required>
          </div>     
          <div class="form-group">
            <input type="Number" class="form-control" id="mobile" name="mobile" placeholder="Mobile Number" required>
          </div>
          <div class="form-group">
            <!-- <input type="text" class="form-control" id="subject" name="subject" placeholder="Subject" required> -->
            <!-- <label for="UI" class="form-control">Service</label> -->
                        <select name="Services" id="UI" class="form-control" value="Service" required>
                            <option value="Service">Which Breed You Want !!</option>
                            <option value="Spotted Cat">Spotted Cat</option>
                            <option value="Domestic short-haire">Domestic short-haire</option>
                            <option value="Indian paraiah dog">Indian paraiah dog</option>
                            <option value="Ducks">Ducks</option>
                            <option value="Parrots">Parrots</option>
                            <option value="Pigeons">Pigeons</option>
                            <option value="Rohu">Rohu</option>
                            <option value="Orangefin labeo">Orangefin labeo</option>
                            <option value="Deccani Sheep">Deccani Sheep</option>
                            <option value="Roborovski Hamsters">Roborovski Hamsters</option>
                            <option value="Djungarian Hamsters">Djungarian Hamsters</option>
                            <option value="Alaskan Rabbit">Alaskan Rabbit</option>
                            <option value="Domestic native cow">Domestic native cow</option>
                            <option value="Red Sindhi">Red Sindhi</option>
                            <option value="Marwari Horse">Marwari Horse</option>
                            <option value="Kathyawari Horse">Kathyawari Horse</option>
                            <option value="Audithia Turtle">Audithia Turtle</option>
                            <option value="Caspian pond Turtle">Caspian pond Turtle</option>
                            <option value="Other">Other</option>
                        </select>
          </div>
          <div class="form-group">
           <textarea class="form-control" type="textarea" id="message" name="message" placeholder="Message" maxlength="140" rows="7"></textarea>
           <span class="help-block"><p id="characterLeft" class="help-block">Max Character length : 140 </p></span>
          </div> 
          <input type="submit" name="submit" type="button" id="submit" name="submit" class="btn btn-primary pull-right"/>    
        </form>  
      </div>
    </div>   
    </div>
     </body>
  
</html>