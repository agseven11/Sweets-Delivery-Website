package com.mithaimafia.login;

import java.io.IOException;

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
   		
   		String email = request.getParameter("umail");
		String password = request.getParameter("upass");
		
		String name = LoginDAO.isValidate(email, password);
		
		if(name != null)
		{
			String id = LoginDAO.isID(email,password);
			HttpSession session = request.getSession();
			session.setAttribute("name", name);
			session.setAttribute("id", id);
			response.sendRedirect("home1.jsp");
		}
		else
		{
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
			request.setAttribute("status3", "invalid email or password");
			dispatcher.forward(request, response);
		}
   	}

}
