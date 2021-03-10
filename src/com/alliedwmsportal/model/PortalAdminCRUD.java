package com.alliedwmsportal.model;

import java.sql.Connection;



import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.alliedwmsportal.controller.PortalAdmin;

public class PortalAdminCRUD {
	
	private String dbUrl ="jdbc:mysql://localhost:3306/BankingDB?useSSL=false";
	private String dbUname = "root";
	private String dbPassword = "Letmein211!";
	private String dbDriver = "com.mysql.cj.jdbc.Driver";
	
	public void loadDriver(String dbDriver)
	{
		try {
			Class.forName(dbDriver);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public Connection getConnection()
	{
		Connection con = null;
		try {
			con = DriverManager.getConnection(dbUrl, dbUname, dbPassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}
	
	public boolean validate(PortalAdmin logincustomer)
	{
		boolean status = false;
		
		loadDriver(dbDriver);
		Connection con = getConnection();
		
		String sql = "select * from record where username = ? and password =? and accountnumber = ? and zipcode =?";
		PreparedStatement ps;
		try {
		ps = con.prepareStatement(sql);
		ps.setString(1, logincustomer.getUsername());
		ps.setString(2, logincustomer.getPassword());
		ps.setInt(3, logincustomer.getAN());
		ps.setInt(4, logincustomer.getZipCode());
		ResultSet rs = ps.executeQuery();
		status = rs.next();
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
