package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnect {
 private static Connection conn;
 public static Connection getCon() throws SQLException {

		 try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/studentsdata","root","kkkkk");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return conn;
	 
 }
}
