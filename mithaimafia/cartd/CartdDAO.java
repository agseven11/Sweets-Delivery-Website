package com.mithaimafia.cartd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class CartdDAO {

	public static List<CartdModel> getAllCarts(String id)
	{
	    List<CartdModel> userlist = new ArrayList<>();
		try
		{
			System.out.println("111");
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mithai_mafia","root","07121998");
			Statement smt = con.createStatement();	
			System.out.println(id);
			 
			
			ResultSet rst = smt.executeQuery("select * from mithai_mafia.cart where custid = " + id);
			System.out.println("333");
			;
			
			
			while(rst.next())
				
			{
				System.out.println("444");
				CartdModel u = new CartdModel();
				
				u.setDishname(rst.getString("dishname"));
				u.setPrice(rst.getInt("price"));
				System.out.println("555");
				userlist.add(u);
				System.out.println(u.getDishname());
				System.out.println(u.getPrice());
				
			}
		}
		catch(Exception e)
		{
			System.out.println("666");
			e.printStackTrace();
		}
		
		return userlist;
		
	}
	
	
	
}
