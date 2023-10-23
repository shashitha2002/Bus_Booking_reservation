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
	
	<c:forEach var="res" items="${resDetails}">
            
            
    <c:set var="comId" value="${res.comId}"/>
	<c:set var="complain" value="${res.complain}"/>
	<c:set var="respond" value="${res.respond}"/>       
            
            <tr>
                <td>${res.comId}</td>
                <td>${res.complain}</td>
                <td>${res.respond}</td>
            </tr>
  
        </c:forEach>
	</table>
	
		<br><br>
     <form action="getRespondUpdate" method="post">   
    	
    	<input type="number" name="id" placeholder="Enter the complain number"><br><br>
    	
        <input type="submit" name="submit" value="Update my response">
    
	</form>
	
	<br><br>
     <form action="deleteRespond" method="post">   
    	
    	<input type="number" name="id"><br><br>
    	
        <input type="submit" name="submit" value="Delete myresponse">
    
	</form>

</body>
</html>