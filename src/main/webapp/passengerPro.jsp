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
	<h1>this is passenger profile</h1>
	
	<c:forEach var="pas" items="${pasDetails}">
	
	<c:set var="id" value="${pas.id}"/>
	<c:set var="name" value="${pas.name}"/>
	<c:set var="nic" value="${pas.nic}"/>
	<c:set var="email" value="${pas.email}"/>
	<c:set var="phone" value="${pas.phone}"/>
	<c:set var="username" value="${pas.username}"/>
	<c:set var="password" value="${pas.password}"/>
	
	
	<h2>Hello, welcome back ${pas.name} </h2>
		id = ${pas.id} <br>
		${pas.nic} <br>
		${pas.email} <br>
		${pas.phone} <br>
		${pas.username} <br>
		${pas.password} <br>
	</c:forEach>
	
	<c:url value="UpdatePassenger.jsp" var="passengerUpdate">
		
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="nic" value="${nic}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="username" value="${username}"/>
		<c:param name="password" value="${password}"/>
		
	</c:url>
	
   <a href="${passengerUpdate}">edit my profile</a> 
    <br><br>
    
    <c:url value="addCard.jsp" var="addCard">
		
		<c:param name="id" value="${id}"/>
		
	</c:url>
    
    
    <a href="${addCard}">Add credit card</a>
    <br><br>
    
    
    <a href="">Booking a ticket</a>
    <br><br>
    
    
    
    <a href="">My tickets</a>
    <br><br>
    
    <c:url value="DeletePassenger.jsp" var="passengerDelete">
		
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="nic" value="${nic}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="username" value="${username}"/>
		<c:param name="password" value="${password}"/>
		
	</c:url>
    
    <a href="${passengerDelete}">delete my account</a>
    <br><br>
	
	
</body>
</html>