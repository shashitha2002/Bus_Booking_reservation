<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>passenger Login page</title>
	
	<!--boostrap link on-->

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

<!--boostrap link off-->

</head>

<body div class="p-3 mb-2 bg-dark text-white">
    <center>
	<h1 class="text-success">Passenger Login</h1><br>
    </center>	
	
	<form action="login" method="post">

        <div class="form-group">

        <label>Name : </label>
        <input type="text" name="name" class="form-control" placeholder="Enter Name">
        <br>

        <label>password : </label>
        <input type="password" name="password" class="form-control" placeholder="password">
        <br><br>
        </div>

        <center><input type="submit" name="submit" class="btn btn-success"></center>
    </form>
    	
    <center>
    	<b><p>Don't have a account <a href="passenger_reg.jsp">sign up as a passenger</a></p>
		
		<p>Don't have a account <a href="bus_owner_reg.jsp">sign up as a bus owner</a></p></b>
	</center>

</body>


<!--  <body>

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
		
</body>-->
</html>