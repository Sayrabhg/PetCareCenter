<?php
    
if(isset($_POST["Save"])){
    global $connection;  
    $cat_id = $_POST["cat_id"];
    $adoption_date= $_POST["adoption_date"];
        
$connection = mysqli_connect('localhost','root','','pet_care_center');
$Query = "INSERT INTO adoption(cat_id,adoption_date)             VALUES($cat_id,'$adoption_date')"; 
$Execute = mysqli_query($connection, $Query);
if($Execute)
{
    echo "<div class='alert alert-success'>DATA INSERTED SUCCESSFULLY...</div>";
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
    background:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)), url(images/dev_holiday-kittens_2017dec14_0181_main.jpg);
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
        <h2>Enter Adoption details.</h2>
        <form id="insertion" action="inserta.php" method="post">
            <b>Catalog ID* : </b><input type="int" name="cat_id" placeholder="Enter Catalog id" required><br><br>
            <b>Adoption date* : </b><input type="date" name="adoption_date" placeholder="Enter Adoption date"><br><br>
            
<br><br>
            <input type="submit" id="button" name="Save" value="SAVE">&ensp;
    
        </form>
    </div>
        
    </center>
     <h3> <a href="index.php">HOME</a></h3>
</body>
</html>
