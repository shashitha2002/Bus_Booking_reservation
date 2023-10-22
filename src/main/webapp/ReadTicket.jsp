<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My tickets</title>
</head>
<body>
	
	<%
		String id = request.getParameter("id");
	%>
	
	<h1>My Tickets</h1>
	
	<form action="DisplayTicket" method="post">
	
		<label>Passenger ID : </label>
        <input type="text" name="id" value="<%=id%>" readonly><br><br>
		
		<input type="submit" name="submit" value="Show all my tickets">
		<input type="hidden" name="id" value="<%=id%>">
	</form>
	
</body>
</html>