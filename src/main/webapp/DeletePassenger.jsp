<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete passenger</title>


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>


</head>

<body div class="p-3 mb-2 bg-dark text-white"></div>
	
	<%
		String id = request.getParameter("id");
		String name  = request.getParameter("name");
		String nic = request.getParameter("nic");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String username = request.getParameter("username");
		String password = request.getParameter("password");		
	%>
	
	<b><center><h1 class="text-danger">Delete Your Profile</h1></center></b><br>
	
	<form action="deletePassenger" method="post">
        <div class="form-group">
		
		<label>ID number</label>
        <input type="text" class="form-control" name="id" value="<%=id%>" readonly><br><br>
	
        <label>Name</label>
        <input type="text" name="name" class="form-control" value="<%=name%>" readonly><br><br>

        <label>NIC</label>
        <input type="text" name="NIC" class="form-control" value="<%=nic%>" readonly><br><br>

        <label>Phone number</label>
        <input type="text" name="phone" class="form-control" value="<%=phone%>" readonly><br><br>

        <label>Email</label>
        <input type="text" name="email" class="form-control" value="<%=email%>" readonly><br><br>

        <label>User name</label>
        <input type="text" name="username" class="form-control" value="<%=username%>" readonly><br><br>	

       <center><input type="submit" name="submit"  value="Delete my Account" class="btn btn-danger"></center>

    </div>
    </form>
	
</body>


<!-- 
<body>
	
	<%
	//	String id = request.getParameter("id");
	//	String name  = request.getParameter("name");
	//	String nic = request.getParameter("nic");
	//	String phone = request.getParameter("phone");
	//	String email = request.getParameter("email");
	//	String username = request.getParameter("username");
	//	String password = request.getParameter("password");		
	%>
	
	<center><h1>Delete your profile</h1></center>
	
	<form action="deletePassenger" method="post">
		
		<label>ID number</label>
        <input type="text" name="id" value="<%=id%>" readonly><br><br>
	
        <label>Name</label>
        <input type="text" name="name" value="<%=name%>" readonly><br><br>

        <label>NIC</label>
        <input type="text" name="NIC" value="<%=nic%>" readonly><br><br>

        <label>phone number</label>
        <input type="text" name="phone" value="<%=phone%>" readonly><br><br>

        <label>email</label>
        <input type="text" name="email" value="<%=email%>" readonly><br><br>

        <label>user name</label>
        <input type="text" name="username" value="<%=username%>" readonly><br><br>	

        <input type="submit" name="submit" value="Delete my Account">

    </form>
	
</body>
 -->

</html>