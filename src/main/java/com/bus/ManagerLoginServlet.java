package com.bus;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ManagerLoginServlet")
public class ManagerLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("name");
		String password = request.getParameter("password");
		
		try {
			
				List<Manager> ManagerDetails = busBookingDBUtil.validateManager(username, password);
				request.setAttribute("ManagerDetails", ManagerDetails);
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("ManagerPro.jsp");
		dis.forward(request, response); 
		
	}

}
