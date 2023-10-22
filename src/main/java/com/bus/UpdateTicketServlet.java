package com.bus;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateTicketServlet")
public class UpdateTicketServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		String start = request.getParameter("start");
		String destination = request.getParameter("destination");
		String seatNo = request.getParameter("seatNo");
		
		boolean isTrue =  busBookingDBUtil.updateTicket(id, date, time, start, destination, seatNo);
		
		if(isTrue == true) {
			
			List<Tickets> tikDetails = busBookingDBUtil.getTickets(id);
			request.setAttribute("tikDetails", tikDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("PassengerLogin.jsp");
			dis.forward(request, response);
		}
		
	}

}
