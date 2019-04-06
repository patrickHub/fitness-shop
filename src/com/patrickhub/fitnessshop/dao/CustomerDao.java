package com.patrickhub.fitnessshop.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.patrickhub.fitnessshop.bean.Customer;
import com.patrickhub.fitnessshop.bean.User;

/**
 * Class for managing SQL request on Customer entity
 * @author PatrickHub
 *
 */
public class CustomerDao {
	
	private final Logger LOG = Logger.getLogger(CustomerDao.class.getName());
	
	
	/**
	 * Create a new customer.
	 * 
	 * @param connection connection to the database
	 * @param customer customer to save
	 * @param userId id of the current user
	 * @return persisted customer
	 */
	public Customer registerCustomer(Connection connection, Customer customer, int userId) {
		try {
			
			// write the SQL insert
			String sql = "INSERT INTO customers(customerFirstName, customerLastName,"
								+ " customerEmail, customerPhone, customerBirthdate, userID) "
								+ "	VALUES(?,?,?, ?,?,?);";
			// get preparedStatement
			PreparedStatement statement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
		    // set SQL parameters
			statement.setString(1,  customer.getFirstName());
			statement.setString(2, customer.getLastName());
			statement.setString(3, customer.getEmail());
			statement.setString(4, customer.getPhone());
			statement.setDate(5, new Date(customer.getBirthdate().getTime()));
			statement.setInt(6, userId);
			
			// execute the query
			int rows = statement.executeUpdate();
			
			// check if customer entity is created
			if (rows == 0) {
	            throw new SQLException("Failled to create customer, no rows affected.");
	        }
			
			// check weather customerID has been generated
	        ResultSet generatedIds = statement.getGeneratedKeys();
            if (generatedIds.next()) {
            	customer.setId(generatedIds.getInt(1));
            }
            else {
                throw new SQLException("Failled to create customer, no customerID obtained.");
            }
	        
	
			
		} catch (SQLException e) {
			LOG.log(Level.SEVERE, e, null);
		}
		
		return customer;
	}

}
