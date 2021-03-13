package com.alliedwmsportal.view;


import java.io.IOException;



import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.alliedwmsportal.controller.PortalAdmin;
import com.alliedwmsportal.model.PortalAdminCRUD;


@WebServlet("/login")

public class PortalAdminServlet extends HttpServlet{
	
	
private static final long serialVersionUID = 1L;
    
   
    public PortalAdminServlet() {	
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PortalAdminCRUD unkownuser = new PortalAdminCRUD();
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		//int accountno = Integer.parseInt(request.getParameter("accountno"));
		//int zipcode = Integer.parseInt(request.getParameter("zipcode"));
		String accountno = request.getParameter("accountno");
		String zipcode = request.getParameter("zipcode");
		PortalAdmin user = new PortalAdmin();
		user.setUsername(username);
		user.setPassword(password);
		user.setAN(accountno);
		user.setZipCode(zipcode);
	
		
		if(!username.isEmpty() && !username.isEmpty() && !username.isEmpty() && !username.isEmpty()  ) {
		
				if (unkownuser.validate(user))
					{
							RequestDispatcher dispatcher = request.getRequestDispatcher("logingranted.jsp");
							dispatcher.forward(request, response);
			
						}
				else 
				{
			
					response.sendRedirect("login.jsp");
			
				}
		
		}
		else {
			response.sendRedirect("login.jsp");
		}
	
	

}}
