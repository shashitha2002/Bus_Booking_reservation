<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update vehicle</title>
<head>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>


</head>

<body div class="p-3 mb-2 bg-dark text-white"></div>
	
	<form action="UpdateVehicle" method="post">
	
	<table border="1">
        <tr>
            <th>vehicle number</th>
            <th>vehicle registration number</th>
            <th>chassis number</th>
            <th>bus owner ID</th>   
        </tr>
	
	<c:forEach var="veh" items="${vehicleDetails}">
            
            <tr>
                <td><input type="text" name="id" value="${veh.vNo}"></td>
                <td><input type="text" name="vehicle_Reg_No" value="${veh.vehicle_Reg_No}"></td>
                <td><input type="text" name="chassisNo" value="${veh.chassisNo}"></td>
                <td><input type="text" name="bus_owner_id" value="${veh.bus_owner_id}"></td>
                
            </tr>
  
        </c:forEach>
        
	</table>
	
	<input type="submit" name="submit" value="update" class="btn btn-primary btn-lg btn-block">
	
	</form>

<hr>

    
	
</body>

<!--  
<body>
	
	<form action="UpdateVehicle" method="post">
	
	<table border="1">
        <tr>
            <th>vehicle number</th>
            <th>vehicle registration number</th>
            <th>chassis number</th>
            <th>bus owner ID</th>   
        </tr>
	
	<c:forEach var="veh" items="${vehicleDetails}">
            
            <tr>
                <td><input type="text" name="id" value="${veh.vNo}" readonly></td>
                <td><input type="text" name="vehicle_Reg_No" value="${veh.vehicle_Reg_No}" pattern="[0-9]+"></td>
                <td><input type="text" name="chassisNo" value="${veh.chassisNo}" pattern="[0-9]+"></td>
                <td><input type="text" name="bus_owner_id" value="${veh.bus_owner_id}" pattern="[0-9]+" readonly></td>
                
            </tr>
  
        </c:forEach>
        
	</table>
	
		<input type="submit" name="submit" value="update">
	
	</form>
	
</body>
-->
</html>