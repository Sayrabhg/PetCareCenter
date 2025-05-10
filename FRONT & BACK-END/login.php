<?php
error_reporting(E_ERROR);

$user = $_POST['user'];
$pass = $_POST['pass'];
$error="";
$success="";
if(isset($_POST['submit'])){
	if($user=="Saurabh" || $user=="Bhushan"){
		if($pass=="Pass@123"|| $pass=="Pass@123"){
		header("Location:admin.php");
	}
	else{
		echo "Invalid Password";
	}
}
else{
	echo "Invalid Username";
}
}
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Admin Login Page</title>
	<!-- <link rel="stylesheet" href="style.css"> -->
	<link rel="stylesheet" href="mycs.css">
	<style>
		@import "https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css";
		body{
	margin: 0;
	padding: 0;
    font-style: italic;
    font-family: cursive;
	background: linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)), url(images/taking-your-pet-5.jpg) ;
	background-size: cover;
}
.form1,.form2{
    padding: 20px;
    position: relative;
    top:11vh;
}
.form0{
    height: 70vh;
	backdrop-filter: blur(3px);
    border: 1px solid black;
    filter: drop-shadow(0 0 1px green);
    width: fit-content;
    padding: 30px;
    border-radius: 20px;
    position: absolute;
	top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    color: black;
}
.unm{
    width: 300px;
    height: 4vh;
    font-family: cursive;
    font-size: large;
    background-color: rgba(240, 248, 255, 0);
    border: none;
    border-bottom: 2px solid black;
}
label{
	color:greenyellow;
}
.pnm{
    width: 300px;
    height: 4vh;
    font-family: cursive;
    font-size: large;
    background-color: rgba(240, 248, 255, 0);
    border: none;
    border-bottom: 2px solid black;
}
.form6{
    text-align: center;
	top: 20px;
}
.btn{
    position: relative;
    top:150px;
    left: 25vh;
    padding: 5px 15px;
    background-color: greenyellow;
    border: 1px solid green;
    font-size: large;
    border-radius: 20px;
}
.btn:hover{
    background-color: rgb(129, 215, 0);
    color: aliceblue;
    filter: drop-shadow(0 0 10px rgb(127, 252, 68));
}

	</style>
</head>
<body>
	<div class ="login-box">
		<form method="POST" class="form0">
		<div class="form6">
		<h1 class="form6">Admin Login Page</h1>
        </div>
		<div class="form1">
			<i class="fa fa-user" aria-hidden="true"></i>
			<label>Username  :</label>
			<input type="text" placeholder="Username" class="unm" name="user" value="" required><br><br> 
		</div>
		<div class="form2">
			<i class="fa fa-lock" aria-hidden="true"></i>
			<label>Password  :</label>
			<input type="password" placeholder="password" class="pnm" name="pass" value="" required><br><br>
		</div>
		<input class="btn" type="submit" name="submit" value="Sign-in">
</form>
<h3> <a href="index.php">HOME</a></h3>
</div>
</body>
</html>
