package com.bus;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateVehicleServlet")
public class UpdateVehicleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String vehicle_Reg_No = request.getParameter("vehicle_Reg_No");
		String chassisNo = request.getParameter("chassisNo");
		String bus_owner_id = request.getParameter("bus_owner_id");
		
		boolean isTrue =  busBookingDBUtil.updateVehicle(id, vehicle_Reg_No, chassisNo);
		
		if(isTrue == true) {
			
			List<Vehicles> vehicleDetails = busBookingDBUtil.getVehicles(bus_owner_id);
			request.setAttribute("vehicleDetails", vehicleDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("BusOwnerLogin.jsp");
			dis.forward(request, response);
		}
		
	}

}
