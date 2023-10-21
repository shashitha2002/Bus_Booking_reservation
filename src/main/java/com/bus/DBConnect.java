package com.bus;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	
	private static String url = "jdbc:mysql://localhost:3307/bus_booking";
	private static String username = "root";
	private static String pwd = "shashitha123";
	private static Connection conn;
	
	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			conn = DriverManager.getConnection(url, username, pwd);
			
		}catch(Exception e) {
			System.out.println("Database connection is unsuccessful");
		}
		
		return conn;
		
		
		
		
	}
	
	
}
