package com.bus;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteTravelServlet")
public class DeleteTravelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		
		boolean isTrue = busBookingDBUtil.deleteTravel(id);
		
		if(isTrue == true) {
			List<Travels> travelDetails = busBookingDBUtil.getTimeTable();
			request.setAttribute("travelDetails", travelDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("TimeTable.jsp");
			dis.forward(request, response);
		}
		
		
	}

}
