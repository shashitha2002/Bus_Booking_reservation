<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add travels</title>


<!--boostrap link on-->

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

 <!--boostrap link off-->



</head>

<body <div class="p-3 mb-2 bg-dark text-white"></div>>
		
		<h1 class="text-primary">Add travels</h1>
	
		<form action="AddTravel" method="post">

            <div class="form-group row">

        <label  for="inputEmail3" class="col-sm-2 col-form-label">Date : </label>
        <div class="col-sm-10">
        <input type="text" name="date" class="form-control">
    </div>
        <br><br>

        <label  for="inputEmail3" class="col-sm-2 col-form-label">Time : </label>
        <div class="col-sm-10">
        <input type="text" name="time" class="form-control">
    </div>
        <br><br>

        <label  for="inputEmail3" class="col-sm-2 col-form-label">Departure : </label>
        <div class="col-sm-10">
        <input type="text" name="departure" class="form-control">
    </div>
        <br><br>

        <label  for="inputEmail3" class="col-sm-2 col-form-label">Destination : </label>
        <div class="col-sm-10">
        <input type="text" name="destination" class="form-control">
    </div>
        <br><br>
        
        <label  for="inputEmail3" class="col-sm-2 col-form-label">Turns : </label>
        <div class="col-sm-10">
        <input type="text" name="turns" class="form-control">
    </div>
        <br><br>

        <label  for="inputEmail3" class="col-sm-2 col-form-label">Drive Name : </label>
        <div class="col-sm-10">
        <input type="text" name="driveName" class="form-control">
    </div>
        <br><br>

        <label  for="inputEmail3" class="col-sm-2 col-form-label">Bus Number : </label>
        <div class="col-sm-10">
        <input type="text" name="busNo" class="form-control">
    </div>
        <br><br>

        <input type="submit" name="submit"  class="btn btn-primary btn-lg btn-block">

        <br>

    </div>

    </form>
	
</body>


<!-- 
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
 -->


</html>