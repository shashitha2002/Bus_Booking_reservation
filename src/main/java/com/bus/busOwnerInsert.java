package com.bus;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/busOwnerInsert")
public class busOwnerInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String NIC = request.getParameter("NIC");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String username = request.getParameter("username");
		String pwd = request.getParameter("password");
		
boolean istrue;
		
		istrue = busBookingDBUtil.insertBusOwner(name, NIC, phone, email, username, pwd);
		
		if(istrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("BusOwnerLogin.jsp");
			dis.forward(request, response);
		}
		
		
	}

}
