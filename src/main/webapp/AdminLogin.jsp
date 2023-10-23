<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin login</title>
</head>
<body>
	
	<h1>Admin login</h1>

	<form action="AdminLogin" method="post">
		
        <label>Admin Name : </label>
        <input type="text" name="name">
        <br><br>

        <label>password : </label>
        <input type="password" name="password">
        <br><br>
		
        <input type="submit" name="submit">
    </form>
	
</body>
</html>