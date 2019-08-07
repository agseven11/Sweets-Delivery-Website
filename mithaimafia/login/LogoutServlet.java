package com.mithaimafia.login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession s = request.getSession();
		String name = (String)s.getAttribute("name");
		String cid = (String)s.getAttribute("id");
		
		System.out.println(cid);
		int id = Integer.parseInt(cid);
		LoginDAO.deleteCart(name,id);
		s.invalidate();
		response.sendRedirect("home.jsp");	
	}

}
