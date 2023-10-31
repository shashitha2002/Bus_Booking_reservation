<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Bus Ticket</title>

<!--boostrap link on-->

 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

  <!--boostrap link off-->



</head>


<body div class="p-3 mb-2 bg-dark text-white"></div>
	
	<%
		String id = request.getParameter("id");
	%>
	
	<center><h1 class="text-primary">Book Bus Ticket</h1></center>

    <form action="addTicket" method="post">

        <div class="form-group row">
		
		<label  for="inputEmail3" class="col-sm-2 col-form-label">Customer ID : </label>
        <div class="col-sm-10">
        <input type="text" name="id" value="<%=id%>" class="form-control" readonly><br><br>
        </div>
		
        <label  for="inputEmail3" class="col-sm-2 col-form-label">Date : </label>
        <div class="col-sm-10">
        <input type="text" name="date" class="form-control" pattern="[0-9!@#$%^&*(),.?\"><br><br>
        </div>

        <label  for="inputEmail3" class="col-sm-2 col-form-label">Time : </label>
        <div class="col-sm-10">
        <input type="text" name="time" class="form-control" pattern="[0-9!@#$%^&*(),.?\"><br><br>
        </div>

        <label  for="inputEmail3" class="col-sm-2 col-form-label">Departure City : </label>
        <div class="col-sm-10">
        <input type="text" name="start" class="form-control" pattern="[A-Za-z]+"><br><br>
        </div>

        <label  for="inputEmail3" class="col-sm-2 col-form-label">Destination  City : </label>
        <div class="col-sm-10">
        <input type="text" name="destination" class="form-control" pattern="[A-Za-z]+"><br><br>
        </div>

        <label for="inputEmail3" class="col-sm-2 col-form-label">Seat Number : </label>
        <div class="col-sm-10">
        <input type="number" name="seatno" class="form-control" pattern="[0-9]+"><br><br>
        </div>

        <input type="submit" name="submit" value="confirm Booking" class="btn btn-primary btn-lg btn-block">

    </div>
    </form>
	</div>
</body>


<!-- 
<body>
	
	<%
		//String id = request.getParameter("id");
	%>
	
	<center><h1>Book Bus Ticket</h1></center>

    <form action="addTicket" method="post">
		
		<label>Customer ID : </label>
        <input type="text" name="id" value="<%=id%>" readonly><br><br>
		
        <label>Date : </label>
        <input type="text" name="date"><br><br>

        <label>Time : </label>
        <input type="text" name="time"><br><br>

        <label>Departure City : </label>
        <input type="text" name="start"><br><br>

        <label>Destination  City : </label>
        <input type="text" name="destination"><br><br>

        <label>Seat Number : </label>
        <input type="number" name="seatno"><br><br>

        <input type="submit" name="submit" value="confirm Booking">

    </form>
	
</body>
 -->

</html>