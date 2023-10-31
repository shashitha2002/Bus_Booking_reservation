<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta charset="UTF-8">
<title>My tickets</title>


 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>


</head>


<body div class="p-3 mb-2 bg-dark text-white"></div>
	
	<center><h1 class="text-primary">My tickets</h1></center>
	
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

        <div class="form-group row">
    	
    	<input type="number" name="id"><br><br>

        <hr>
    	
        <input type="submit" name="submit" value="Update my ticekts" class="btn btn-primary btn-lg btn-block">

    </div>
    
	</form>
	
	<br><br>
     <form action="deleteTicket" method="post">   

        <div class="form-group row">
    	
    	<input type="number" name="id"><br><br>
        <hr>
    	
        <input type="submit" name="submit" value="Delete ticket" class="btn btn-danger">

    </div>
    
	</form>
	
</body>

<!-- 
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
 -->

</html>