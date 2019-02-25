<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
 <html>

 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<head> 


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
var url="http://localhost:8080/all?";
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

 <div class="container">
  <h2>Registration Form</h2>         
  <table class="table">
    <thead>
      <tr>
 <th>Uname</th>
<th>Password</th>
<th>Name</th>
<th>Address</th>
      </tr>
    </thead>
    <tbody>  
   
      <tr>
        <td><input type="text" name="uname" id="uname"></td>
        <td><input type="text" name="pass" id="pass"></td>
        <td><input type="text" name="name" id="name"></td>
        <td><input type="text" name="address" id="address"></td>
      </tr>
     
    </tbody>
  </table>
   <input type="button" value="Register" onclick="reg()">
  
</div>

</body>
</html>