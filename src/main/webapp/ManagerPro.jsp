<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manager profile</title>
</head>
<body>
	
	<c:forEach var="manager" items="${ManagerDetails}">
		
		<c:set var="id" value="${manager.mId}"/>
		<c:set var="name" value="${manager.name}"/>
		<c:set var="NIC" value="${manager.NIC}"/>
		<c:set var="username" value="${manager.username}"/>
		<c:set var="password" value="${manager.password}"/>
		
		<h2>Hello, welcome back ${manager.name} </h2>
		
		
	</c:forEach>
	
	<c:url value="addTravel.jsp" var="addTravel">
		
		<c:param name="id" value="${id}"/>
		
	</c:url>
    
    
    <a href="${addTravel}"><input type="submit" name="submit" value="Add Travel"></a>
    <br><br>
	
	<form action="timeTable" method="post">
		<input type="submit" name="submit" value="View time table">
	</form>
	
	
</body>
</html>