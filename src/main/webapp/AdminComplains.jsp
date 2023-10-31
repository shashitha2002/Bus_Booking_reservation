<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Complaints and response</title>

<!--bootstrap link on-->

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

 <!--bootstrap link off-->


</head>


<body div class="p-3 mb-2 bg-dark text-white">
	
	<center><h1 class="text-primary">My Complains and responds</h1></center>
	
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
        
        <div class="form-group row">
    	
    	<input type="number" name="id" placeholder="Enter the complain number" required>
	</form>
    <hr>

    <input type="submit" name="submit" value="Update my response" class="btn btn-primary btn-lg btn-block">
	
	<br><br>
     <form action="deleteRespond" method="post">   
    	<hr>
    	<input type="number" name="id" required><br><br>
        
    	
        <input type="submit" name="submit" value="Delete my response" class="btn btn-primary btn-lg btn-block">
    
    </div>
	</form>

<!-- 
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
-->

</html>