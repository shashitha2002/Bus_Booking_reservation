<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update your profile</title>
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
</html>