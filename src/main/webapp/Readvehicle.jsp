<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
		String id = request.getParameter("id");
	%>
	
	<h1>My Tickets</h1>
	
	<form action="Displayvehicle" method="post">
	
		<label>Passenger ID : </label>
        <input type="text" name="id" value="<%=id%>" readonly><br><br>
		
		<input type="submit" name="submit" value="Show all my vehicles">
		<input type="hidden" name="id" value="<%=id%>">
	</form>
	
</body>
</html>