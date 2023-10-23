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
</html>