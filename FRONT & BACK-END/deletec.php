    <?php
    
if(isset($_POST["Delete"])){
    global $connection;
    $cat_id = $_POST["cat_id"];
$connection = mysqli_connect('localhost','root','','pet_care_center');
$Query = "DELETE FROM catalog WHERE cat_id = '$cat_id'"; 
$Execute = mysqli_query($connection, $Query);

if($Execute)
{
    echo "<div class='alert alert-success'>DATA DELETED SUCCESSFULLY...</div>";
}
else
{
    echo "<div class='alert alert-danger'>CANNOT BE DELETED</div>";
}
    
}

?>


<!DOCTYPE html>
<html lang="">
<head>
    <title>DELETION</title>
    <link rel="stylesheet" type = "text/css" href ="CSS/bootstrap.min.css">
    <link rel="stylesheet" href="mycs.css">
</head>
<body>
    <style>
   
body{
    background:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)), url(images/cute-cow-FTR.jpg);
    background-size: cover;
    width: 100%;
    display: table;
    font-family: sans-serif;}

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
        input[type="text"] {
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
        <h2>DELETE</h2>
        <form id="insertion" action="deletec.php" method="post">
            <b>Catalog ID : </b><input type="text" name="cat_id" placeholder="Enter Catalog ID." required><br><br>
            <input type="submit"  name="Delete" id="button" value="DELETE">&ensp;
        </form>
    </div>
        
    </center>
    <h3> <a href="index.php">HOME</a></h3>&ensp;



    
    
    
    
    </body>
</html>
