<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admin profile</title>
</head>
<body>
	
	<c:forEach var="admin" items="${adminDetails}">
	
		<c:set var="id" value="${admin.id}"/>
		<c:set var="name" value="${admin.name}"/>
		<c:set var="nic" value="${admin.nic}"/>
		<c:set var="username" value="${admin.username}"/>
		<c:set var="password" value="${admin.password}"/>
	
	<h2>Hello, welcome back Mr.${admin.name} </h2>	
	
	</c:forEach>
	
	<form action="Readrespond" method="post">
		<input type="submit" name="submit" value="View complains">
	</form>
	
</body>
</html>