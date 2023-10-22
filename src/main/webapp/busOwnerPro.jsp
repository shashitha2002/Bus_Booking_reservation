<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>     
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Bus owner profile</h1>
	
	<c:forEach var="busowner" items="${busOwnerDetails}">
		
		<c:set var="id" value="${busowner.id}"/>
		<c:set var="name" value="${busowner.name}"/>
		<c:set var="nic" value="${busowner.nic}"/>
		<c:set var="email" value="${busowner.email}"/>
		<c:set var="phone" value="${busowner.phone}"/>
		<c:set var="username" value="${busowner.username}"/>
		<c:set var="password" value="${busowner.password}"/>
		
		<h2>Hello, welcome back ${busowner.name} </h2>
		
		
		
	</c:forEach>
	
		
	<c:url value="addVehicle.jsp" var="addVehicle">
		
		<c:param name="id" value="${id}"/>
		
	</c:url>
    
    <a href="${addVehicle}"><input type="submit" name="submit" value="Add vehicle"></a>
    <br><br>
	
	
	<c:url value="Readvehicle.jsp" var="Readvehicle">
		
		<c:param name="id" value="${id}"/>
	</c:url>
	
		<a href="${Readvehicle}"><input type="submit" name="submit" value="view my vehicle"></a>
    <br><br>
	
</body>
</html>