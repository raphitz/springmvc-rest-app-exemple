package com.med.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class test {
public static void main(String[] args) {
	 		Connection conn = null;
	    boolean isOk = false;
	    try
	    {
	      Class.forName("org.apache.commons.dbcp.BasicDataSource");
	      conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/testdb", "root", "");

	      if (conn != null)
	      {
	        isOk = true;

	      }
	    }
	    catch (ClassNotFoundException e)
	    {
	      System.out.println("Driver for Database not found");
	    }
	    catch (SQLException e)
	    {
	      System.out.println("Impossible to connect to Database : " + e.getMessage());
	    }

	    System.out.println("=========>" + isOk);
}
}
