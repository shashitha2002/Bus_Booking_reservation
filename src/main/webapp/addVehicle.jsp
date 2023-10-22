<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
		String id = request.getParameter("id");
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
</html>