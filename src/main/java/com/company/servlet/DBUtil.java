package com.company.servlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
	
	
	

	private static final String URL = "jdbc:oracle:thin:@//localhost:1521/ORCL";
	private   static final String USERNAME = "system";
	private static final String PASSWORD = "biswajit";
   static {
       try {
           // Load the MySQL JDBC driver
           Class.forName("oracle.jdbc.driver.OracleDriver");
       } catch (ClassNotFoundException e) {
           e.printStackTrace();
       }
   }

   public static Connection getConnection() throws SQLException {
       return DriverManager.getConnection(URL, USERNAME, PASSWORD);
   }

}
