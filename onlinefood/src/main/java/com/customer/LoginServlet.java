package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username =request.getParameter("uid");
		String password =request.getParameter("pass");
		
		
		try {
			
	        if (isValidUser(username, password)) {
	            HttpSession session = request.getSession();
	            session.setAttribute("loggedInUser", username);
	            RequestDispatcher dis = request.getRequestDispatcher("home.jsp");
	            dis.forward(request, response);
	        } else {
	            // Redirect to an error page or display an error message
	            response.sendRedirect("login-error.jsp");
	        }

	        
			List<Customer> cusDetails = CustomerDBUtil.validate(username, password);
			
			request.setAttribute("cusDetails", cusDetails);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
			
	}

	
	private boolean isValidUser(String username, String password) {
	    // Implement your validation logic, e.g., check against a database
	    List<Customer> cusDetails = CustomerDBUtil.validate(username, password);
	    return !cusDetails.isEmpty();
	}
}
