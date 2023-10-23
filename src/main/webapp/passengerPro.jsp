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
	
	
	<c:forEach var="pas" items="${pasDetails}">
	
	<c:set var="id" value="${pas.id}"/>
	<c:set var="name" value="${pas.name}"/>
	<c:set var="nic" value="${pas.nic}"/>
	<c:set var="email" value="${pas.email}"/>
	<c:set var="phone" value="${pas.phone}"/>
	<c:set var="username" value="${pas.username}"/>
	<c:set var="password" value="${pas.password}"/>
	
	
	<h2>Hello, welcome back ${pas.name} </h2>
		
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
	
   <a href="${passengerUpdate}"><input type="submit" name="submit" value="edit my profile"></a> 
    <br><br>
    
    
    
    <c:url value="addCard.jsp" var="addCard">
		
		<c:param name="id" value="${id}"/>
		
	</c:url>
    
    
    <a href="${addCard}"><input type="submit" name="submit" value="Add credit card"></a>
    <br><br>
    
    
    
    
    
    <c:url value="BookTicket.jsp" var="BookTicket">
		
		<c:param name="id" value="${id}"/>
		
	</c:url>
    
    
    <a href="${BookTicket}">
   		<input type="submit" name="submit" value="book a ticket">
    </a>
    <br><br>
    
    	
    	
    	
    <c:url value="ReadTicket.jsp" var="ReadTicket">
		
		<c:param name="id" value="${id}"/>
	</c:url>
	
		<a href="${ReadTicket}"><input type="submit" name="submit" value="my tickets"></a>
    <br><br>
		
    
    
    
    <c:url value="Complain.jsp" var="complain">
		
		<c:param name="id" value="${id}"/>
	</c:url>
	
		<a href="${complain}"><input type="submit" name="submit" value="make a complain"></a>
    <br><br>
    
    
    
    
    <c:url value="ReadComplain.jsp" var="Readcomplain">
		
		<c:param name="id" value="${id}"/>
	</c:url>
	
		<a href="${Readcomplain}"><input type="submit" name="submit" value="View my complains"></a>
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
    
    <a href="${passengerDelete}"><input type="submit" name="submit" value="delete my account"></a>
    <br><br>
	
	
</body>
</html>