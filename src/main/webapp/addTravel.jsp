<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add travels</title>
</head>
<body>
		
		<h1>Add travels</h1>
	
		<form action="AddTravel" method="post">

        <label>Date : </label>
        <input type="text" name="date">
        <br><br>

        <label>Time : </label>
        <input type="text" name="time">
        <br><br>

        <label>Departure : </label>
        <input type="text" name="departure">
        <br><br>

        <label>Destination : </label>
        <input type="text" name="destination">
        <br><br>
        
        <label>Turns : </label>
        <input type="text" name="turns">
        <br><br>

        <label>Drive Name : </label>
        <input type="text" name="driveName">
        <br><br>

        <label>Bus Number : </label>
        <input type="text" name="busNo">
        <br><br>

        <input type="submit" name="submit" value="Add travel">

    </form>
	
</body>
</html>