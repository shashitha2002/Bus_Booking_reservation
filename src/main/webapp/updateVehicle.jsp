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
	
		<input type="submit" name="submit" value="update">
	
	</form>
	
</body>
</html>