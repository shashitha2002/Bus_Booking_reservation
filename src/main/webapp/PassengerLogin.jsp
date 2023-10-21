<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>passenger Login page</title>
</head>
<body>

	<h1>Passenger login</h1>	
	
	<form action="login" method="post">

        <label>Name : </label>
        <input type="text" name="name">
        <br><br>

        <label>password : </label>
        <input type="password" name="password">
        <br><br>
		
        <input type="submit" name="submit">
    </form>
    	
    	<p>Don't have a account <a href="passenger_reg.jsp">sign up as a passenger</a></p>
		
		<p>Don't have a account <a href="bus_owner_reg.jsp">sign up as a bus owner</a></p>
		
</body>
</html>