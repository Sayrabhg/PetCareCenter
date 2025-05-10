<?php
    
if(isset($_POST["Save"])){
    global $connection;  
    $id_no= $_POST["id_no"];
    $branch_id= $_POST["branch_id"];
    $bcode= $_POST["bcode"];
        
$connection = mysqli_connect('localhost','root','','pet_care_center');
$Query = "INSERT INTO animals(id_no,branch_id,bcode)             VALUES($id_no,$branch_id,'$bcode')"; 
$Execute = mysqli_query($connection, $Query);
if($Execute)
{
    echo "<div class='alert alert-success'>DATA INSERTED SUCCESSFULLY...</div>";
}else{
    echo"<div class='alert alert-danger'>Data will not inserted</div>";
}
    
}
?>


<!DOCTYPE html>
<html lang="">
<head>
    <title>Insertion</title>
    <link rel="stylesheet" type = "text/css" href ="CSS/bootstrap.min.css">
    <link rel="stylesheet" href="mycs.css">
</head>
<body>
    <style>
    
body{
    background:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)), url(images/Green-Turtle-1024x768.jpg) no-repeat;
    background-size: cover;
    width: 100%;
    display: table;
    font-family: sans-serif;
}

        .container{
            margin-top: 130px;
        }
        #button {
    
    padding: 10px;
    border-radius: 5px;
    outline: 0px;
            width: 100px;
}
        #insertion {
    width: 40%;
    background-color: #051019;
    opacity: 0.5;
    padding: 50px 0px;
            border-radius: 10px;
}
        input[type="text"], input[type="password"] {
                    width: 250px;
                    padding: 7px;
                    border-radius: 5px;
                    outline: 0px;
                }
        
        b {
            color: white;
        }

    </style>
    <center>
    <div class="container">
        <h2>Enter Animals details.</h2>
        <form id="insertion" action="insertan.php" method="post">
            <b>Animal ID no* : </b><input type="int" name="id_no" placeholder="Enter Animal ID no" required><br><br>
            <b>Branch ID no : </b><input type="int" name="branch_id" placeholder="Enter Branch ID no"><br><br>
            <b>Breed code : </b><input type="text" name="bcode" placeholder="Enter Breed Code"><br><br>
<br><br>
            <input type="submit" id="button" name="Save" value="SAVE">&ensp;
    
        </form>
    </div>
        
    </center>
     <h3> <a href="index.php">HOME</a></h3>
</body>
</html>
