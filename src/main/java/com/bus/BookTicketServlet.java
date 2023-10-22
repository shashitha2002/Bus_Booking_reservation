package com.bus;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/BookTicketServlet")
public class BookTicketServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		String start = request.getParameter("start");
		String destination = request.getParameter("destination");
		String seatno = request.getParameter("seatno");
		
		boolean istrue ;
		
		istrue = busBookingDBUtil.AddTicket(id, date, time, start, destination, seatno);
		
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
