<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!--bootstrap link on-->

 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

  <!--bootstrap link off-->

</head>
	
	<%
		String id = request.getParameter("id");
	%>
	
<body  div class="p-3 mb-2 bg-dark text-white">
	
	
	
	<center><h1 class="text-primary">Add Your Bus</h1></center>

    <form action="addBus" method="post">

        <div class="form-group row">

        <label  for="inputEmail3" class="col-sm-2 col-form-label">Bus owner ID : </label> 
        <div class="col-sm-10">
        <input type="text" name="busOwnerID" class="form-control" value="<%=id%>" readonly>
    </div>
        <br><br>

        <label  for="inputEmail3" class="col-sm-2 col-form-label">Vehicle Registration Number </label> 
        <div class="col-sm-10">
        <input type="text" class="form-control" name="RegNo" pattern="[0-9]+">
    </div>
        <br><br>

        <label  for="inputEmail3" class="col-sm-2 col-form-label">Vehicle chassis Number : </label>
        <div class="col-sm-10">
        <input type="text" class="form-control" name="chassie" pattern="[0-9]+">
    </div> 
        <br><br>
        </div>

        <input type="submit" name="submit" class="btn btn-primary btn-lg btn-block">

    </form>

<!--
<body>
	
	<%
		//String id = request.getParameter("id");
	%>
	
	<center><h1>Add Your Bus</h1></center>

    <form action="addBus" method="post">

        <label>Bus owner ID : </label> 
        <input type="text" name="busOwnerID" value="<%=id%>" readonly>
        <br><br>

        <label>Vehicle Registration Number : </label> 
        <input type="text" name="RegNo">
        <br><br>

        <label>Vehicle chassis Number : </label> 
        <input type="text" name="chassie">
        <br><br>
		
		<input type="submit" name="submit">
		
    </form>
	
</body>
-->

</html>