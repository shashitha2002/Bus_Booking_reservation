<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Bus Ticket</title>
</head>
<body>
	
	<%
		String id = request.getParameter("id");
	%>
	
	<center><h1>Book Bus Ticket</h1></center>

    <form action="addTicket" method="post">
		
		<label>Customer ID : </label>
        <input type="text" name="id" value="<%=id%>" readonly><br><br>
		
        <label>Date : </label>
        <input type="text" name="date"><br><br>

        <label>Time : </label>
        <input type="text" name="time"><br><br>

        <label>Departure City : </label>
        <input type="text" name="start"><br><br>

        <label>Destination  City : </label>
        <input type="text" name="destination"><br><br>

        <label>Seat Number : </label>
        <input type="number" name="seatno"><br><br>

        <input type="submit" name="submit" value="confirm Booking">

    </form>
	
</body>
</html>