package com.alliedwmsportal.view;


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

import src.com.alliedwmsportal.controller.*;
import src.com.alliedwmsportal.model.*;


@WebServlet("/login")

public class PortalAdminServlet extends HttpServlet {
	
	 
    public PortalAdminServlet() {	
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
		dispatcher.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		PortalAdminCRUD unknownuser = new PortalAdminCRUD();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String accountno = request.getParameter("accountno");
		String zipcode = request.getParameter("zipcode");
		
		PortalAdmin user = new PortalAdmin();
		user.setUsername(username);
		user.setPassword(password);
		user.setAN(accountno);
		user.setZipCode(zipcode);
	
		
	
				if (unknownuser.validate(user))
					{
							RequestDispatcher dispatcher = request.getRequestDispatcher("logingranted.jsp");
							dispatcher.forward(request, response);
			
						}
				else 
				{
			
					response.sendRedirect("login.jsp");
			
				}
		
	
	
	

}
	}
