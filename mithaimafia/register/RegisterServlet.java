package com.mithaimafia.register;



import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("mail");
		String password = request.getParameter("pass");
		String cpassword = request.getParameter("cpass");

		
		RegisterModel reg = new RegisterModel();
		reg.setName(name);
		reg.setPhone(phone);
		reg.setEmail(email);
		reg.setPassword(password);
		reg.setCpassword(cpassword);
		
		
			int result1 = RegisterDAO.verifyemail(reg);
			if(result1 > 0)
			{
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
				request.setAttribute("status1", "Email already exists.");
				dispatcher.forward(request, response);
				
			}
			
			if(password.equalsIgnoreCase(cpassword))
			{
				int result = RegisterDAO.addRegister(reg);
				if(result > 0)
				{
					RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
					request.setAttribute("status2", "Success");
					dispatcher.forward(request, response);
				}
			}
			else
			{
				RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
				request.setAttribute("status", "Password doesnot match");
				dispatcher.forward(request, response);
			}
		
		
		
	
		
		
		
		
	}

}
