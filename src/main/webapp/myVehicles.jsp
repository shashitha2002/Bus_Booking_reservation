<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My vehicles</title>


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>



</head>


<body div class="p-3 mb-2 bg-dark text-white"></div>
	
	<center><h1>My vehicles</h1></center>
	
	<table border="1">
        <tr>
            <th>vNo</th>
            <th>vehicle_Reg_No</th>
            <th>chassisNo</th>           
            <th>bus_owner_id</th>
        </tr>
	
	<c:forEach var="veh" items="${vehicleDetails}">
            
            <c:set var="vNo" value="${veh.vNo}"/>
			<c:set var="vehicle_Reg_No" value="${veh.vehicle_Reg_No}"/>
			<c:set var="chassisNo" value="${veh.chassisNo}"/>
			<c:set var="bus_owner_id" value="${veh.bus_owner_id}"/>
            
            <tr>
                <td>${veh.vNo}</td>
                <td>${veh.vehicle_Reg_No}</td>
                <td>${veh.chassisNo}</td>
                <td>${veh.bus_owner_id}</td>
            </tr>
  
        </c:forEach>
	</table>

    <hr>
	
	<form action="getVehicleUpdate" method="post">   

        <div class="form-group row">
    	
    	<input type="number" name="id"><br><br>

        <hr>
    	
        <input type="submit" name="submit" value="Update my vehicle" class="btn btn-primary btn-lg btn-block">
    
            </div>

	</form>
	
	<br><br>
     <form action="DeleteVehicle" method="post">  
        
        <div class="form-group row">
    	
    	<input type="number" name="id"><br><br>

        <hr>
    	
        <input type="submit" name="submit" value="Delete vehicle" class="btn btn-danger">
    
    </div>

	</form>
	
</body>


<!--  
<body>
	
	<center><h1>My vehicles</h1></center>
	
	<table border="1">
        <tr>
            <th>vNo</th>
            <th>vehicle_Reg_No</th>
            <th>chassisNo</th>           
            <th>bus_owner_id</th>
        </tr>
	
	<c:forEach var="veh" items="${vehicleDetails}">
            
            <c:set var="vNo" value="${veh.vNo}"/>
			<c:set var="vehicle_Reg_No" value="${veh.vehicle_Reg_No}"/>
			<c:set var="chassisNo" value="${veh.chassisNo}"/>
			<c:set var="bus_owner_id" value="${veh.bus_owner_id}"/>
            
            <tr>
                <td>${veh.vNo}</td>
                <td>${veh.vehicle_Reg_No}</td>
                <td>${veh.chassisNo}</td>
                <td>${veh.bus_owner_id}</td>
            </tr>
  
        </c:forEach>
	</table>
	
	<form action="getVehicleUpdate" method="post">   
    	
    	<input type="number" name="id" required><br><br>
    	
        <input type="submit" name="submit" value="Update my vehicle">
    
	</form>
	
	<br><br>
     <form action="DeleteVehicle" method="post">   
    	
    	<input type="number" name="id" required><br><br>
    	
        <input type="submit" name="submit" value="Delete vehicle">
    
	</form>
	
</body>
-->


</html>