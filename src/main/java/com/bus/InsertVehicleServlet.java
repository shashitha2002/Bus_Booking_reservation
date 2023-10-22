package com.bus;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/InsertVehicleServlet")
public class InsertVehicleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String BusOwnerId = request.getParameter("busOwnerID");
		String RegNo = request.getParameter("RegNo");
		String chassie = request.getParameter("chassie");
		
		
		boolean istrue;
		
		istrue = busBookingDBUtil.insertVehicle(BusOwnerId, RegNo, chassie);
		
		if(istrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("BusOwnerLogin.jsp");
			dis.forward(request, response);
		}
		
		
	}

}
