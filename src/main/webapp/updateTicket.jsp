<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update ticket</title>


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

</head>


<body div class="p-3 mb-2 bg-dark text-white"></div>
	
	<form action="TicketUpdate" method="post">
	
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
            
            <tr>
                <td><input type="text" name="id" value="${tik.id}" readonly></td>
                <td><input type="text" name="date" value="${tik.date}"></td>
                <td><input type="text" name="time" value="${tik.time}"></td>
                <td><input type="text" name="start" value="${tik.start}"></td>
                <td><input type="text" name="destination" value="${tik.destination}"></td>
                <td><input type="text" name="seatNo" value="${tik.seatNo}"></td>
            </tr>
  
        </c:forEach>
        
	</table>
	
	<hr>
	
	<input type="submit" name="submit" value="update" class="btn btn-primary btn-lg btn-block">
	
	</form>

    

</body>
 
<!-- 
<body>
	
	<form action="TicketUpdate" method="post">
	
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
            
            <tr>
                <td><input type="text" name="id" value="${tik.id}" readonly></td>
                <td><input type="text" name="date" value="${tik.date}"></td>
                <td><input type="text" name="time" value="${tik.time}"></td>
                <td><input type="text" name="start" value="${tik.start}"></td>
                <td><input type="text" name="destination" value="${tik.destination}"></td>
                <td><input type="text" name="seatNo" value="${tik.seatNo}"></td>
            </tr>
  
        </c:forEach>
        
	</table>
	
		<input type="submit" name="submit" value="update">
	
	</form>
</body>
 -->
</html>