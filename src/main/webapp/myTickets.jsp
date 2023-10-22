<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta charset="UTF-8">
<title>My tickets</title>
</head>
<body>
	
	<center><h1>My tickets</h1></center>
	
	<table border="1">
        <tr>
            <th>ID</th>
            <th>Date</th>
            <th>Time</th>
            <th>Start</th>
            <th>Destination</th>
            <th>Seat number</th>
        </tr>
	
	<c:forEach var="tik" items="${tikDetails}">
            
            
    <c:set var="id" value="${tik.id}"/>
	<c:set var="date" value="${tik.date}"/>
	<c:set var="time" value="${tik.time}"/>
	<c:set var="start" value="${tik.start}"/>
	<c:set var="destination" value="${tik.destination}"/>
	<c:set var="seatNo" value="${tik.seatNo}"/>       
            
            <tr>
                <td>${tik.id}</td>
                <td>${tik.date}</td>
                <td>${tik.time}</td>
                <td>${tik.start}</td>
                <td>${tik.destination}</td>
                <td>${tik.seatNo}</td>
            </tr>
  
        </c:forEach>
	</table>
	
		<br><br>
     <form action="getTicketUpdate" method="post">   
    	
    	<input type="number" name="id"><br><br>
    	
        <input type="submit" name="submit" value="Update my ticekts">
    
	</form>
	
	<br><br>
     <form action="deleteTicket" method="post">   
    	
    	<input type="number" name="id"><br><br>
    	
        <input type="submit" name="submit" value="Delete ticket">
    
	</form>
	
</body>
</html>