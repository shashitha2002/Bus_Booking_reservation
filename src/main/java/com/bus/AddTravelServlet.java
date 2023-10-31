package com.bus;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AddTravelServlet")
public class AddTravelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Date = request.getParameter("date");
		String time = request.getParameter("time");
		String departure = request.getParameter("departure");
		String destination = request.getParameter("destination");
		String turns = request.getParameter("turns");
		String driveName = request.getParameter("driveName");
		String busNo = request.getParameter("busNo");
		
		boolean istrue;
		
		istrue = busBookingDBUtil.insertTravel(Date, time, departure, destination, turns, driveName,busNo);
		
		if(istrue == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("ManagerLogin.jsp");
			dis.forward(request, response);
		}
		
		
		
		

	}

}
