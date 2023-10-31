package com.bus;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String username = request.getParameter("name");
		String password = request.getParameter("password");
		
		try {
			
				List<Passenger> pasDetails = busBookingDBUtil.validate(username, password);
				request.setAttribute("pasDetails", pasDetails);
				
				if(pasDetails != null) {
					RequestDispatcher dis = request.getRequestDispatcher("passengerPro.jsp");
					dis.forward(request, response);
				}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
	}

}
