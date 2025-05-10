  <html>
  <head>
    <style>
      body{
	margin: 0;
	padding: 0;
	font-family: sans-serif;
	background:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)), url(images/Animal_Shelter_Worker_Profile_Image.jpg) no-repeat;
	background-size: cover;
}
.header{
	width: 350px;
	font-size: 40px;
	position: absolute;
	top: 45%;
  left: 50%;
  transform: translate(-50%,-50%);
	color: white;
  font-family: cursive;
  font-weight: bold;
}
.header:hover{
  color: wheat;
}
.header a {
float: left;
font-size: 30px;
border: 1px solid none;
border-bottom: 1px solid none;
margin-bottom: 7px;
padding: 1px 1px;
color: black;
text-decoration: none;
font-family: cursive;
}
button{
  border-radius: 15px 30px;
  padding:4px 20px;
}
button:hover{
  background-color: wheat;
}
    </style>
    
   </head>

   <body>
    <center>
   <div class="header">Employee details
  <br><br>
  <button> <a href="insertE.php">Insert</a></button>
   <br><br>
   <button> <a href="deleteE.php">Delete</a><br> </button>
   <br><br>
   <button> <a href="displayE.php">Display</a> </button>
</div>

</center>
</body>
 </html>
