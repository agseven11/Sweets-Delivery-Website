package com.mithaimafia.login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDAO {
	
public static String isValidate(String email,String password) {
		
		String name = null;
		
		try 
		{
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mithai_mafia","root","07121998");
			
			PreparedStatement pst = con.prepareStatement("select name from mithai_mafia.customer where email = ? and password = ?");
			
			
			pst.setString(1,email);
			pst.setString(2,password);
			ResultSet rs = pst.executeQuery();
			
			
			while(rs.next())
			{
				name = rs.getString("name");
			}
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return name;
		
	}


public static String isID(String email,String password) {
	
	String id = null;
	
	try 
	{
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mithai_mafia","root","07121998");
		
		PreparedStatement pst = con.prepareStatement("select custid from mithai_mafia.customer where email = ? and password = ?");
		
		
		pst.setString(1,email);
		pst.setString(2,password);
		ResultSet rs = pst.executeQuery();
		
		
		while(rs.next())
		{
			id = rs.getString("custid");
		}
		
		
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
	return id;
	
}

public static void deleteCart(String name,int id) {
	
	
	try 
	{
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mithai_mafia","root","07121998");
		
		PreparedStatement pst = con.prepareStatement("delete from mithai_mafia.cart where custid = ?");
		
		
		pst.setInt(1,id);
		int rs = pst.executeUpdate();
		
		
		
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
	return;
	
}

}
