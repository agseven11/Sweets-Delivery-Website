package com.mithaimafia.cart;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mithaimafia.register.RegisterDAO;
import com.mithaimafia.register.RegisterModel;

/**
 * Servlet implementation class CartServlet
 */
@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession s = request.getSession();

		String name = (String)s.getAttribute("name");
		String cid = (String)s.getAttribute("id");
		
		int id = Integer.parseInt(cid);
		String sid = request.getParameter("d");
		
		String str[] = sid.split(" ");
		int did = Integer.parseInt(str[0]);
		int resid = Integer.parseInt(str[1]);
		int lid = Integer.parseInt(str[2]);
		
		
		
		CartModel reg = new CartModel();
		reg.setName(name);
		reg.setId(id);
		reg.setDid(did);
		
		reg.setResid(resid);
		reg.setLid(lid);
		
		
		if(resid == 1 && lid == 1)
		{
		int result1 = CartDAO.addCart1(reg);
		
		if(result1 > 0)
		{
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("restb1.jsp");
			request.setAttribute("status2", "Success");
			dispatcher.forward(request, response);
		}
		
		}
		

		
	}

}
