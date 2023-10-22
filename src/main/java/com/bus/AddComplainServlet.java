package com.bus;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddComplainServlet")
public class AddComplainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String complain = request.getParameter("complain");
		
		boolean istrue;
		
		istrue = busBookingDBUtil.insertComplain(id, complain);
		
		if(istrue == true) {
			List<Passenger> pasDetails = busBookingDBUtil.getPassengerDetails(id);
			request.setAttribute("pasDetails", pasDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("passengerPro.jsp");
			dis.forward(request, response);
		}
		
	}

}
