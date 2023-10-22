<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>complains</title>
</head>
<body>
	
	<%
		String id = request.getParameter("id");
	%>
	
	<form action="ReadComplain" method="post">

        <label>User ID :</label>
        <input type="text" name="id" value="<%=id%>" readonly>
        <br><br>

        <input type="submit" name="submit">

    </form>
	
</body>
</html>