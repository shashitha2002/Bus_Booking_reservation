<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update your profile</title>

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
	
	
	<center><h1 class="text-primary">Update Your Profile</h1></center><br>
	
	<form action="updatePass" method="post">

        <div class="form-group row">
		
		<label label for="inputEmail3" class="col-sm-2 col-form-label">ID number</label>
        <div class="col-sm-10">
        <input type="text" name="id" class="form-control" value="<%=id%>"><br><br>
    </div>
	
        <label label for="inputEmail3" class="col-sm-2 col-form-label">Name</label>
        <div class="col-sm-10">
        <input type="text" name="name" class="form-control" value="<%=name%>"><br><br>
    </div>

        <label label for="inputEmail3" class="col-sm-2 col-form-label">NIC</label>
        <div class="col-sm-10">
        <input type="text" name="NIC" class="form-control" value="<%=nic%>"><br><br>
    </div>

        <label label for="inputEmail3" class="col-sm-2 col-form-label">phone number</label>
        <div class="col-sm-10">
        <input type="text" name="phone" class="form-control" value="<%=phone%>"><br><br>
    </div>

        <label label for="inputEmail3" class="col-sm-2 col-form-label">email</label>
        <div class="col-sm-10">
        <input type="text" name="email" class="form-control" value="<%=email%>"><br><br>
    </div>

        <label label for="inputEmail3" class="col-sm-2 col-form-label">user name</label>
        <div class="col-sm-10">
        <input type="text" name="username" class="form-control" value="<%=username%>"><br><br>
    </div>


        <label label for="inputEmail3" class="col-sm-2 col-form-label">password</label>
        <div class="col-sm-10">
        <input type="password" name="password" class="form-control" value="<%=password%>"><br><br>
    </div>
</div>
        <input type="submit" name="submit" value="Update My Profile" class="btn btn-primary btn-lg btn-block">

    

    </form>
	
	
</body>

<!-- 
<body>
	
	<%
		//String id = request.getParameter("id");
		//String name  = request.getParameter("name");
		//String nic = request.getParameter("nic");
		//String phone = request.getParameter("phone");
		//String email = request.getParameter("email");
		//String username = request.getParameter("username");
		//String password = request.getParameter("password");		
	%>
	
	
	<center><h1>update your profile</h1></center>
	
	<form action="updatePass" method="post">
		
		<label>ID number</label>
        <input type="text" name="id" value="<%=id%>"><br><br>
	
        <label>Name</label>
        <input type="text" name="name" value="<%=name%>"><br><br>

        <label>NIC</label>
        <input type="text" name="NIC" value="<%=nic%>"><br><br>

        <label>phone number</label>
        <input type="text" name="phone" value="<%=phone%>"><br><br>

        <label>email</label>
        <input type="text" name="email" value="<%=email%>"><br><br>

        <label>user name</label>
        <input type="text" name="username" value="<%=username%>"><br><br>

        <label>password</label>
        <input type="password" name="password" value="<%=password%>"><br><br>

        <input type="submit" name="submit" value="update my profile">

    </form>
	
	
</body>
 -->

</html>