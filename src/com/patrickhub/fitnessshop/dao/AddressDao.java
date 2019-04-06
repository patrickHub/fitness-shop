package com.patrickhub.fitnessshop.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.patrickhub.fitnessshop.bean.Address;

/**
 * class for managing SQL query on Address entity
 * @author PatrickHub
 *
 */
public class AddressDao {

private final Logger LOG = Logger.getLogger(AddressDao.class.getName());
	
	
	/**
	 * Create a new address.
	 * 
	 * @param connection connection to the database
	 * @param customer address to save
	 * @param customerId customer id
	 * @return persisted address
	 */
	public Address registerAddress(Connection connection, Address address, int customerId) {
		try {
			
			// write the SQL insert
			String sql = "INSERT INTO address(addressStreet, addressZipCode, "
								+ "addressCity, addressCountry, customerID) "
								+ "VALUES(?,?,?,?,?);";
			// get preparedStatement
			PreparedStatement statement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
		    // set SQL parameters
			statement.setString(1,  address.getStreet());
			statement.setString(2, address.getZipCode());
			statement.setString(3, address.getCity());
			statement.setString(4, address.getCountry());
			statement.setInt(5, customerId);
			
			// execute the query
			int rows = statement.executeUpdate();
			
			// check if address entity is created
			if (rows == 0) {
	            throw new SQLException("Failled to create address, no rows affected.");
	        }
			
			// check weather addressId has been generated
	        ResultSet generatedIds = statement.getGeneratedKeys();
            if (generatedIds.next()) {
            	address.setId(generatedIds.getInt(1));
            }
            else {
                throw new SQLException("Failled to create address, no customerID obtained.");
            }
	        
	
			
		} catch (SQLException e) {
			LOG.log(Level.SEVERE, e, null);
		}
		
		return address;
	}
}
