<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="orange">
<h1>Update Information</h1>
<form action="updt">
<table cellspacing="20">
<tr><td><c:forEach items="${data}" var="d">
<tr><th>Id</th><td><input type="hidden" name="id" value="${d.id}"></td></tr>
<tr><th>Ename</th><td><input type="text" name="ename" value="${d.ename}"></td></tr>
<tr><th>Address</th><td><input type="text" name="address" value="${d.address}"></td></tr>
</c:forEach>
</table>
<input type="submit" value="update">
</form>
</body>
</html>