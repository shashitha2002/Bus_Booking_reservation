<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My vehicles</title>
</head>
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
    	
    	<input type="number" name="id"><br><br>
    	
        <input type="submit" name="submit" value="Update my vehicle">
    
	</form>
	
	<br><br>
     <form action="DeleteVehicle" method="post">   
    	
    	<input type="number" name="id"><br><br>
    	
        <input type="submit" name="submit" value="Delete vehicle">
    
	</form>
	
</body>
</html>