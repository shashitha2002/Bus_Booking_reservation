<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manager profile</title>


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

</head>


<body div class="p-3 mb-2 bg-dark text-white">
	
	<c:forEach var="manager" items="${ManagerDetails}">
		
		<c:set var="id" value="${manager.mId}"/>
		<c:set var="name" value="${manager.name}"/>
		<c:set var="NIC" value="${manager.NIC}"/>
		<c:set var="username" value="${manager.username}"/>
		<c:set var="password" value="${manager.password}"/>
		
		<h2 class="text-primary">Hello, welcome back ${manager.name} </h2>
		<hr>
		
		
	</c:forEach>
	
	<c:url value="addTravel.jsp" var="addTravel">
		
		<c:param name="id" value="${id}"/>
		
	</c:url>
    
    
    <a href="${addTravel}"><input type="submit" name="submit" value="Add Travel" class="btn btn-primary btn-lg btn-block"></a>
    <br><br>
	
	<form action="timeTable" method="post">
		<input type="submit" name="submit" value="View time table" class="btn btn-primary btn-lg btn-block">
	</form>
	
	</div>
</body>


<!-- 
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
 -->

</html>