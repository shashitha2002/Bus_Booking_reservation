package com.bus;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateComplainServlet")
public class UpdateComplainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String comId = request.getParameter("comId") ;
		String complain = request.getParameter("complain") ;
		String respond = request.getParameter("respond") ;
		
		boolean isTrue =  busBookingDBUtil.updateComplain(comId, complain, respond);
		
		if(isTrue == true) {
			
			
			RequestDispatcher dis = request.getRequestDispatcher("PassengerLogin.jsp");
			dis.forward(request, response);
		}
		
		
	}

}
