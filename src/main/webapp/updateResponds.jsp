<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
	<!DOCTYPE html>
	<html>
	<head>
	<meta charset="UTF-8">
	<title>Give the response</title>
	
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
	
	</head>
	
	<body div class="p-3 mb-2 bg-dark text-white"></div>
	
	<form action="updateRespond" method="post">
	
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
                <td><input type="text" name="comId" value="${res.comId}" readonly></td>
                <td><input type="text" name="complain" value="${res.complain}" readonly></td>
                <td><input type="text" name="respond" value="${res.respond}" ></td>
            </tr>
  
        </c:forEach>
	</table>

	<hr>
	</form>

	<input type="submit" name="submit" value="update" class="btn btn-primary btn-lg btn-block">
	
	
</body>
	
	<!--  
	<body>
	
	
	<form action="updateRespond" method="post">
	
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
                <td><input type="text" name="comId" value="${res.comId}" readonly></td>
                <td><input type="text" name="complain" value="${res.complain}" readonly></td>
                <td><input type="text" name="respond" value="${res.respond}" ></td>
            </tr>
  
        </c:forEach>
	</table>
	
	<input type="submit" name="submit" value="update">
	
	</form>
	
	
	
</body>
-->
</html>