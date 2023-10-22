<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Make a complain</title>
</head>
<body>
	
	<%
		String id = request.getParameter("id");	
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
</html>