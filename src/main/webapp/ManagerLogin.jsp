<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manager Login</title>
</head>
<body>
	
	<h1>Manager login</h1>

	<form action="ManagerLogin" method="post">
		
        <label>UserName : </label>
        <input type="text" name="name">
        <br><br>

        <label>password : </label>
        <input type="password" name="password">
        <br><br>
		
        <input type="submit" name="submit">
    </form>
	
	
	
</body>
</html>