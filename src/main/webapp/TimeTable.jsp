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
	
	<center><h1>Travel Time Table</h1></center>
	
	<table border="1">
        <tr>
            <th>Travel ID</th>
            <th>Date</th>
            <th>Time</th>           
            <th>departure</th>
            <th>destination</th>
            <th>turns</th>
            <th>Driver Name</th>
            <th>Bus Number</th>
        </tr>
	
	
	<c:forEach var="travel" items="${travelDetails}">
	
		<c:set var="travel_id" value="${travel.travel_id}"/>
		<c:set var="date" value="${travel.date}"/>
		<c:set var="time" value="${travel.time}"/>
		<c:set var="departure" value="${travel.departure}"/>
		<c:set var="destination" value="${travel.destination}"/>
		<c:set var="turns" value="${travel.turns}"/>
		<c:set var="driverName" value="${travel.driverName}"/>
		<c:set var="busNo" value="${travel.busNo}"/>
	
	
		<tr>
			<td>${travel.travel_id}</td>
			<td>${travel.date}</td>
			<td>${travel.time}</td>
			<td>${travel.departure}</td>
			<td>${travel.destination}</td>
			<td>${travel.turns}</td>
			<td>${travel.driverName}</td>
			<td>${travel.busNo}</td>
		</tr>
	</c:forEach>
	</table>
	
	<br><br>
     <form action="getTravelUpdate" method="post">   
    	
    	<input type="number" name="id" placeholder="Enter the travel ID"><br><br>
    	
        <input type="submit" name="submit" value="Update the time table">
    
	</form>
	
	<br><br>
     <form action="DeleteTravel" method="post">   
    	
    	<input type="number" name="id"><br><br>
    	
        <input type="submit" name="submit" value="Delete a travel">
	</form>
</body>
</html>