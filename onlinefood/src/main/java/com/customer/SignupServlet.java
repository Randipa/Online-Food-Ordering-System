package com.customer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/SignupServlet")
public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String username = request.getParameter("uid");
        String password = request.getParameter("pass");
		
		boolean IsTrue;
        
        
	     IsTrue = CustomerDBUtil.Insertcustomer(name, email, phone, username, password);
        
	     if(IsTrue == true) {
	    	 RequestDispatcher dis =request.getRequestDispatcher("login.jsp");
	 		dis.forward(request, response);
	     }else {
	    	 RequestDispatcher dis2 =request.getRequestDispatcher("#");
		 	 dis2.forward(request, response);
	     }
        
		
		
		
		
		
		
		
		doGet(request, response);
	}

}
