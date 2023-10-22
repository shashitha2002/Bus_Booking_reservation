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
	
	
	<form action="updateComplain" method="post">
	
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
                <td><input type="text" name="comId" value="${com.comId}" readonly></td>
                <td><input type="text" name="complain" value="${com.complain}"></td>
                <td><input type="text" name="respond" value="${com.respond}" readonly></td>
            </tr>
  
        </c:forEach>
	</table>
	
	<input type="submit" name="submit" value="update">
	
	</form>
	
</body>
</html>