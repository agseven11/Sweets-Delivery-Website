package com.mithaimafia.cartd;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.*;
import java.io.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;




/**
 * Servlet implementation class cartdServlet
 */
@WebServlet("/cartdServlet")
public class cartdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession s = request.getSession();
		System.out.println("1");
		String name = (String)s.getAttribute("name");
		String cid = (String)s.getAttribute("id");
		System.out.println("2");
		//int id = Integer.parseInt(cid);
		System.out.println("5");
		CartdModel re = new CartdModel();
		System.out.println("6");
		re.setId(cid);
		System.out.println("3");
		List<CartdModel> carts = new ArrayList<>();
		carts = CartdDAO.getAllCarts(re.getId());
		System.out.println("4");
		System.out.println("4");
		System.out.println("4");
		RequestDispatcher dispatcher = request.getRequestDispatcher("cart.jsp");
		request.setAttribute("data", carts);
		dispatcher.forward(request, response);
	}

	
}
