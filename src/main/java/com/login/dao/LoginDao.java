package com.login.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao {
	
	String sql = "select * from login_details where uname=? and upass=?";
	String url = "jdbc:mysql://localhost:3306/donations";
	String username = "root";
	String password = "hem";
	
	public boolean checkLogin(String uname, String upass)
	{
		
		 try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, uname);
			st.setString(2, upass);
			ResultSet rs = st.executeQuery();
			
			if(rs.next())
			{
				return true;
			}
		} 
		 catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			;
			
		}
		   
		 return false;
		
	}
	
}
