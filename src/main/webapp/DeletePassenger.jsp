<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete passenger</title>
</head>
<body>
	
	<%
		String id = request.getParameter("id");
		String name  = request.getParameter("name");
		String nic = request.getParameter("nic");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String username = request.getParameter("username");
		String password = request.getParameter("password");		
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
</html>