<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add card details</title>
</head>
<body>
	
	<%
		String id = request.getParameter("id");	
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
</html>