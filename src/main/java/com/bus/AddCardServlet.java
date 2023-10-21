package com.bus;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddCardServlet")
public class AddCardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String card_number = request.getParameter("card_number");
		String ex_month = request.getParameter("ex_month");
		String ex_year = request.getParameter("ex_year");
		String CVC = request.getParameter("CVC");
		String Bank = request.getParameter("Bank");
		
		boolean istrue;
		
		istrue = busBookingDBUtil.addCard(id, card_number, ex_month, ex_year, CVC, Bank);
		
		if(istrue == true) {
			List<Passenger> pasDetails = busBookingDBUtil.getPassengerDetails(id);
			request.setAttribute("pasDetails", pasDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("passengerPro.jsp");
			dis.forward(request, response);
		}
		else{
			RequestDispatcher dis = request.getRequestDispatcher("passenger_reg.jsp");
			dis.forward(request, response);
		}
	}

}
