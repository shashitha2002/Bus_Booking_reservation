package com.bus;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateTravelServlet")
public class UpdateTravelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String Date = request.getParameter("date");
		String time = request.getParameter("time");
		String departure = request.getParameter("departure");
		String destination = request.getParameter("destination");
		String turns = request.getParameter("turns");
		String driveName = request.getParameter("driveName");
		String busNo = request.getParameter("busNo");
		
		boolean isTrue =  busBookingDBUtil.updateTravel(id, Date, time, departure, destination, turns, driveName, busNo);
		
		if(isTrue == true) {
			
			List<Travels> travelDetails = busBookingDBUtil.getTimeTable();
			request.setAttribute("travelDetails", travelDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("TimeTable.jsp");
			dis.forward(request, response);
		}
		
	}

}
