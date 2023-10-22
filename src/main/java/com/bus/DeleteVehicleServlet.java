package com.bus;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteVehicleServlet")
public class DeleteVehicleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		
		boolean isTrue = busBookingDBUtil.deleteVehicle(id);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("BusOwnerLogin.jsp");
			dis.forward(request, response);
		}
		
	}

}
