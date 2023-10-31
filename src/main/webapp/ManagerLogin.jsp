<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manager Login</title>


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

</head>


<body div class="p-3 mb-2 bg-dark text-white"></div>
	
	<center><h1 class="text-success">Manager login</h1></center>

	<form action="ManagerLogin" method="post">

        <div class="form-group">
		
        <label>UserName : </label>
        <input type="text" name="name" class="form-control">
        <br><br>

        <label>password : </label>
        <input type="password" name="password" class="form-control">
        <br><br>
		
        <center><input type="submit" name="submit" class="btn btn-success"></center> 

    </div>
    </form>
	
	
	
</body>


<!-- 
<body>
	
	<h1>Manager login</h1>

	<form action="ManagerLogin" method="post">
		
        <label>UserName : </label>
        <input type="text" name="name" pattern="[A-Za-z0-9]+">
        <br><br>

        <label>password : </label>
        <input type="password" name="password">
        <br><br>
		
        <input type="submit" name="submit">
    </form>
	
	
	
</body>
 -->

</html>