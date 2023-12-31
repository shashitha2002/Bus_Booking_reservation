<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>      
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Travels</title>


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>


</head>


<body div class="p-3 mb-2 bg-dark text-white"></div>
	
	<center><h1 class="text-primary">Travel Time Table</h1></center>
	
	<form action="updateTravel" method="post">
	
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
	
	
	
	<c:forEach var="travel" items="${travDetails}">
	
		<c:set var="travel_id" value="${travel.travel_id}"/>
		<c:set var="date" value="${travel.date}"/>
		<c:set var="time" value="${travel.time}"/>
		<c:set var="departure" value="${travel.departure}"/>
		<c:set var="destination" value="${travel.destination}"/>
		<c:set var="turns" value="${travel.turns}"/>
		<c:set var="driverName" value="${travel.driverName}"/>
		<c:set var="busNo" value="${travel.busNo}"/>
	
	
		<tr>
			<td><input type="text" name="id" value="${travel.travel_id}" readonly></td>
			<td><input type="text" name="date" value="${travel.date}"></td>
			<td><input type="text" name="time" value="${travel.time}"></td>
			<td><input type="text" name="departure" value="${travel.departure}"></td>
			<td><input type="text" name="destination" value="${travel.destination}"></td>
			<td><input type="text" name="turns" value="${travel.turns}"></td>
			<td><input type="text" name="driverName" value="${travel.driverName}"></td>
			<td><input type="text" name="busNo" value="${travel.busNo}"></td>
		</tr>
	</c:forEach>
	
	</table>
	
		<br><br>
        <input type="submit" name="submit" value="Update" class="btn btn-primary btn-lg btn-block">
        
	
	
	</form>
</body>

<!-- 
<body>
	
	<center><h1>Travel Time Table</h1></center>
	
	<form action="updateTravel" method="post">
	
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
	
	
	
	<c:forEach var="travel" items="${travDetails}">
	
		<c:set var="travel_id" value="${travel.travel_id}"/>
		<c:set var="date" value="${travel.date}"/>
		<c:set var="time" value="${travel.time}"/>
		<c:set var="departure" value="${travel.departure}"/>
		<c:set var="destination" value="${travel.destination}"/>
		<c:set var="turns" value="${travel.turns}"/>
		<c:set var="driverName" value="${travel.driverName}"/>
		<c:set var="busNo" value="${travel.busNo}"/>
	
	
		<tr>
			<td><input type="text" name="id" value="${travel.travel_id}" readonly></td>
			<td><input type="text" name="date" value="${travel.date}"></td>
			<td><input type="text" name="time" value="${travel.time}"></td>
			<td><input type="text" name="departure" value="${travel.departure}"></td>
			<td><input type="text" name="destination" value="${travel.destination}"></td>
			<td><input type="text" name="turns" value="${travel.turns}"></td>
			<td><input type="text" name="driverName" value="${travel.driverName}"></td>
			<td><input type="text" name="busNo" value="${travel.busNo}"></td>
		</tr>
	</c:forEach>
	
	</table>
	
		<br><br>
        <input type="submit" name="submit" value="Update">
        
	
	
	</form>
</body>
 -->
</html>