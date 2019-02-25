<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>

<script type="text/javascript">
function  delt()
{	
alert("Delete");
document.suc.action="delt";
document.suc.submit();  
} 
function edt()
{
alert("Edit");
document.suc.action="edt";
document.suc.submit();
}

function updt()
{	
alert("Update");
document.suc.action="updt";
document.suc.submit();
}
</script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body><center>
<form name="suc">
<table border="2" bgcolor="orange">
<tr>
<th>Eid</th>
<th>Name</th>
<th>Address</th>
</tr>
<c:forEach items="${data}" var="s">
<tr>
<td><input type="radio" name="id" value="${s.id}"></td>
<td>${s.ename}</td>
<td>${s.address}</td>
</c:forEach>
</table>
</form>
<input type="submit" value="DELETE" onclick="delt()">
<input type="submit" value="EDIT" onclick="edt()">
</body>
</html>