<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>
<script type="text/javascript">
 function reg()
 {
	
	alert("in function");
var uname=document.getElementById("uname").value;
var pass=document.getElementById("pass").value;	
var name=document.getElementById("name").value;	
var address=document.getElementById("address").value;	
alert(address)
var req = new XMLHttpRequest();
alert("object created");
var url="http://localhost:8080/add?uname="+uname+"&pass="+pass+"&name="+name+"&address="+address;
alert(url);
req.open("POST",url,true);
req.send();
alert("send")
req.onreadystatechange=function()
   {
alert("1")
alert(req.responseText);

if(req.readyState==4 && req.status==200)
{
 
 alert(req.readyState)
 alert(req.status)
 alert(req.responseText)
    var stu=JSON.parse(req.responseText);
 alert(stu) 
    
  
}
  
   }
}
 
 function log()
 {
	
	alert("in function");
/* var uname=document.getElementById("uname").value;
var pass=document.getElementById("pass").value;	
var name=document.getElementById("name").value;	
var address=document.getElementById("address").value;	
alert(address) */
var req = new XMLHttpRequest();
alert("object created");
var url="http://localhost:8080/all";
alert(url);
req.open("GET",url,true);
req.send();
alert("send")
req.onreadystatechange=function()
   {
alert("1")
alert(req.responseText);

if(req.readyState==4 && req.status==200)
{
 
 alert(req.readyState)
 alert(req.status)
 alert(req.responseText)
    var stu=JSON.parse(req.responseText);
 alert(stu) 
    
  
}
  
   }
 }
</script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="silver"> 
<!-- <form action="reg">
<table>
<tr><th>Uname</th><td><input type="text" name="uname" id="uname"></td></tr>
<tr><th>Password</th><td><input type="text" name="pass" id="pass"></td></tr>
<tr><th>Name</th><td><input type="text" name="name" id="name"></td></tr>
<tr><th>Address</th><td><input type="text" name="address" id="address"></td></tr>
</table>  -->

 
<body>

<h2>Login Form</h2>

<form action="/action_page.php">
  <div class="imgcontainer">
  </div>

  <div class="container">
    <label for="uname"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="uname">

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="pass">
        
    <button type="button" onclick="log()">Login</button>
    <label>
      <!-- <input type="checkbox" checked="checked" name="remember"> Remember me -->
    </label>
  </div>

</form>
<a href="register">RegisterHere</a>
</body>
</html>