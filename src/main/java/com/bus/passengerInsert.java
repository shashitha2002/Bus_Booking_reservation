package com.bus;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/passengerInsert")
public class passengerInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String NIC = request.getParameter("NIC");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String username = request.getParameter("username");
		String pwd = request.getParameter("password");
		
		boolean istrue;
		
		istrue = busBookingDBUtil.insertPassenger(name, NIC, phone, email, username, pwd);
		
		if(istrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("PassengerLogin.jsp");
			dis.forward(request, response);
		}
		else{
			RequestDispatcher dis = request.getRequestDispatcher("passenger_reg.jsp");
			dis.forward(request, response);
		}
		
	}

}
