<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My tickets</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

</head>


<body div class="p-3 mb-2 bg-dark text-white">
	
	<%
		String id = request.getParameter("id");
	%>
	
	<center><h1 class="text-primary">My Tickets</h1></center>
	
	<form action="DisplayTicket" method="post">
	
		<label  for="inputEmail3" class="col-sm-2 col-form-label">Passenger ID : </label>
        <input type="text" name="id" value="<%=id%>" readonly class="form-control"><br><br>
		
		<center><input type="submit" name="submit" value="Show all my tickets" class="btn btn-primary btn-lg btn-block"></center>
		<input type="hidden" name="id" value="<%=id%>">
	</form>
	
</body>

<!-- 
<body>
	
	<%
		//String id = request.getParameter("id");
	%>
	
	<h1>My Tickets</h1>
	
	<form action="DisplayTicket" method="post">
	
		<label>Passenger ID : </label>
        <input type="text" name="id" value="<%=id%>" readonly><br><br>
		
		<input type="submit" name="submit" value="Show all my tickets">
		<input type="hidden" name="id" value="<%=id%>">
	</form>
	
</body>
-->
</html>