<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bus owner registration</title>
</head>
<body>

	<center>
	<h2>Bus owner Registration</h2>
	</center>
	
	<form action="inBusOwner" method="post">

        <label>Name</label>
        <input type="text" name="name"><br><br>

        <label>NIC</label>
        <input type="text" name="NIC"><br><br>

        <label>phone</label>
        <input type="text" name="phone"><br><br>

        <label>email</label>
        <input type="email" name="email"><br><br>

        <label>User name</label>
        <input type="text" name="username"><br><br>

        <label>password</label>
        <input type="password" name="password"><br><br>
        
        <input type="submit" name="submit">

    </form>
	
	
</body>
</html>