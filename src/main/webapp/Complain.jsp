<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Make a complain</title>


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>


</head>

	

<body div class="p-3 mb-2 bg-dark text-white"></div>
	
	<%
		String id = request.getParameter("id");	
	%>
	
	<form action="addComplain" method="post">

        <div class="form-group row">

        <label label for="inputEmail3" class="col-sm-2 col-form-label">User ID :</label>
        <div class="col-sm-10">
        <input type="text" name="id" class="form-control" value="<%=id%>" readonly>
    </div>
        <br><br>

        <label label for="inputEmail3" class="col-sm-2 col-form-label">Complain :</label> 
        <div class="col-sm-10">
        <textarea name="complain" cols="50" class="form-control" rows="20" placeholder="Type Your complain"></textarea>
    </div>
        <br><br>

    </div>
    
    <input type="submit" name="submit" class="btn btn-primary btn-lg btn-block"> 
    
    </form>


	
</body>



<!-- 
<body>
	
	<%
		//String id = request.getParameter("id");	
	%>
	
	<form action="addComplain" method="post">

        <label>User ID :</label>
        <input type="text" name="id" value="<%=id%>" readonly>
        <br><br>

        <label>Complain :</label> 
        <textarea name="complain" cols="50" rows="20" placeholder="Type Your complain"></textarea>
        <br><br>

        <input type="submit" name="submit">

    </form>
	
</body>
 -->

</html>