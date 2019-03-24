package com.patrickhub.fitnessshop.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Logger;

import sun.security.action.GetLongAction;

/**
 * class for establish connection with Mysql database
 * @author PatrickHub
 *
 */
public class DBConnection {
	
	private static final Logger LOG = Logger.getLogger("DBConnection.class");
	
	public static Connection getConncetionToDatabase() {
		Connection connection = null;
		
		try {
			
			// load the driver class for mysql
     		Class.forName("com.mysql.jdbc.Driver");
			LOG.info("Mysql Driver registered");
			
			// get hold of the driver manager to establish to connection
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/fitnessshopdb", "root", "P@trick29");
			LOG.info("Connection to Mysql database successfully");
			
		} catch (ClassNotFoundException e) {
			LOG.info("Where is your Mysql Driver ?");
			e.printStackTrace();
		} catch (SQLException e) {
			LOG.info("Connection to database fail. checkout console!");
			e.printStackTrace();
		}
		return connection;
	}

}
