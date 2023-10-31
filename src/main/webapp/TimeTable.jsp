<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>     
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!--boostrap link on-->

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

 <!--boostrap link off-->

</head>

<body <div class="p-3 mb-2 bg-dark text-white"></div>>
	
	<center><h1 class="text-primary">Travel Time Table</h1></center>
	
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
		
		<div class="form-group row">
    	
    	<input type="number" name="id" placeholder="Enter the travel ID"><br><br>

		<hr>
    	
        <input type="submit" name="submit" value="Update the time table" class="btn btn-primary btn-lg btn-block">

		</div>

	</form>
	
	<br><br>
     <form action="DeleteTravel" method="post">  
		
		<div class="form-group row">
    	
    	<input type="number" name="id"><br><br>

		<hr>
    	
        <input type="submit" name="submit" value="Delete a travel" class="btn btn-danger">

	</div>
	</form>
</body>


<!--  
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
-->
</html>