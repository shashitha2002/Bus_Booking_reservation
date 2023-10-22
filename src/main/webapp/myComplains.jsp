<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<center><h1>My Complains and responds</h1></center>
	
	<table border="1">
        <tr>
            <th>ID</th>
            <th>Complain</th>
            <th>Response</th>
        </tr>
	
	<c:forEach var="com" items="${comDetails}">
            
            
    <c:set var="comId" value="${com.comId}"/>
	<c:set var="complain" value="${com.complain}"/>
	<c:set var="respond" value="${com.respond}"/>       
            
            <tr>
                <td>${com.comId}</td>
                <td>${com.complain}</td>
                <td>${com.respond}</td>
            </tr>
  
        </c:forEach>
	</table>
	
		<br><br>
     <form action="getComplainUpdate" method="post">   
    	
    	<input type="number" name="id" placeholder="Enter the complain number"><br><br>
    	
        <input type="submit" name="submit" value="Update my complain">
    
	</form>
	
	<br><br>
     <form action="DeleteComplain" method="post">   
    	
    	<input type="number" name="id"><br><br>
    	
        <input type="submit" name="submit" value="Delete ticket">
    
	</form>
	
</body>
</html>