<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add card details</title>

	<!--boostrap link on-->

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

     <!--boostrap link off-->



</head>

	<%
		String id = request.getParameter("id");	
	%>

<body <div class="p-3 mb-2 bg-dark text-white"></div>>
	

	<h2 class="text-primary"><B>ADD YOUR CREADIT CARD</B></h2>
    <br>

   <form action="AddCard" method="post">

    <div class="form-group row">
	
	<label  for="inputEmail3" class="col-sm-2 col-form-label">Passenger ID Number : </label>
    <div class="col-sm-10">
    <input type="text" name="id" class="form-control" value="<%=id%>" readonly><br><br>
	</div>

    <label  for="inputEmail3" class="col-sm-2 col-form-label">Card Number : </label>
    <div class="col-sm-10">
    <input type="text" name="card_number" class="form-control"  pattern="[0-9]+"><br><br>
    </div>


    <label  for="inputEmail3" class="col-sm-2 col-form-label">Expire month : </label>
    <div class="col-sm-10">
    <input type="number" name="ex_month" class="form-control"  pattern="[0-9]+"><br><br>
    </div>

    <label  for="inputEmail3" class="col-sm-2 col-form-label">Expire year : </label>
    <div class="col-sm-10">
    <input type="number" name="ex_year" class="form-control"  pattern="[0-9]+"><br><br>
    </div>

    <label  for="inputEmail3" class="col-sm-2 col-form-label">CVC : </label>
    <div class="col-sm-10">
    <input type="number" name="CVC" class="form-control"  pattern="[0-9]+"><br><br>
    </div>

    <label  for="inputEmail3" class="col-sm-2 col-form-label">Bank : </label>
    <div class="col-sm-10">
    <input type="text" name="Bank" class="form-control" pattern="[A-Za-z]+"><br><br>
    </div>
    </div>

    <input type="submit" name="submit"  class="btn btn-primary btn-lg btn-block" >
</form>
</div>
</body>


<!-- 
<body>
	
	<%
		//String id = request.getParameter("id");	
	%>
	
	<h2>Add you're credit card</h2>

   <form action="AddCard" method="post">
	
	<label>Passenger ID Number : </label>
    <input type="text" name="id" value="<%=id%>" readonly><br><br>
	
    <label>Card Number : </label>
    <input type="text" name="card_number"><br><br>

    <label>Expire month : </label>
    <input type="number" name="ex_month"><br><br>

    <label>Expire year : </label>
    <input type="number" name="ex_year"><br><br>

    <label>CVC : </label>
    <input type="number" name="CVC"><br><br>

    <label>Bank : </label>
    <input type="text" name="Bank"><br><br>

    <input type="submit" name="submit">

   </form>
	
</body>

 -->

</html>