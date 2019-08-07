package com.mithaimafia.cart;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mithaimafia.register.RegisterModel;

public class CartDAO {

	public static int addCart1(CartModel r){
		int result = 0;
		int price = 0;
		String dishname = null;
		
		try
		{
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mithai_mafia","root","07121998");
			
			PreparedStatement pst = con.prepareStatement("select dishname,price from mithai_mafia.restb1 where dishid = ?");
			pst.setInt(1,r.getDid());
			
			ResultSet rs = pst.executeQuery();
			
			
			while(rs.next())
			{
				dishname = rs.getString("dishname");
				price = rs.getInt("price");
				
			}
			
			PreparedStatement pst1 = con.prepareStatement("insert into mithai_mafia.cart(dishname,price,dishid,restid,locid,custid) values (?,?,?,?,?,?)");
			
			pst1.setString(1,dishname);
			pst1.setInt(2,price);
			pst1.setInt(3,r.getDid());
			pst1.setInt(4,r.getResid());
			pst1.setInt(5,r.getLid());
			pst1.setInt(6,r.getId());
			result = pst1.executeUpdate();
			
			
		}
		catch(Exception e){
			e.printStackTrace();
			System.out.println("11");
		}
		
		return result;

		
}
}
