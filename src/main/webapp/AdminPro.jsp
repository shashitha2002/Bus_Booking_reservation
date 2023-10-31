<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admin profile</title>

<!--bootstrap link on-->

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

 <!--bootstrap link off-->

</head>


<body div class="p-3 mb-2 bg-dark text-white"></div>
	
	<c:forEach var="admin" items="${adminDetails}">
	
		<c:set var="id" value="${admin.id}"/>
		<c:set var="name" value="${admin.name}"/>
		<c:set var="nic" value="${admin.nic}"/>
		<c:set var="username" value="${admin.username}"/>
		<c:set var="password" value="${admin.password}"/>
	
	<h2 class="text-primary">Hello, welcome back Mr.${admin.name} </h2>	
	<hr>
	</c:forEach>
	
	<form action="Readrespond" method="post">

		<div class="form-group row">
		<input type="submit" name="submit" value="View complains" class="btn btn-primary btn-lg btn-block">
		</div>
	</form>
	
</body>



<!-- 
<body>
	
	<c:forEach var="admin" items="${adminDetails}">
	
		<c:set var="id" value="${admin.id}"/>
		<c:set var="name" value="${admin.name}"/>
		<c:set var="nic" value="${admin.nic}"/>
		<c:set var="username" value="${admin.username}"/>
		<c:set var="password" value="${admin.password}"/>
	
	<h2>Hello, welcome back Mr.${admin.name} </h2>	
	
	</c:forEach>
	
	<form action="Readrespond" method="post">
		<input type="submit" name="submit" value="View complains">
	</form>
	
</body>
-->
</html>