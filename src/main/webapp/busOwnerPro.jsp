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
	<h1>this is Bus owner profile</h1>
	
	<c:forEach var="busowner" items="${busOwnerDetails}">
		${busowner.id} <br>
		${busowner.name} <br>
		${busowner.nic} <br>
		${busowner.email} <br>
		${busowner.phone} <br>
		${busowner.username} <br>
		${busowner.password} <br>
	</c:forEach>
	
	
	
	
</body>
</html>