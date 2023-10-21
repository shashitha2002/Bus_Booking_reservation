package com.bus;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeletePassengerServlet")
public class DeletePassengerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		
		boolean isTrue = busBookingDBUtil.deletePassenger(id);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("passenger_reg.jsp");
			dis.forward(request, response);
		}
		else {
			List<Passenger> pasDetails = busBookingDBUtil.getPassengerDetails(id);
			request.setAttribute("pasDetails", pasDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("passengerPro.jsp");
			dis.forward(request, response);
		}
	}

}
