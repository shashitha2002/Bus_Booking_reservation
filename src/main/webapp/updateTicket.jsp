<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
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
                <td><input type="text" name="id" value="${tik.id}"></td>
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
</html>