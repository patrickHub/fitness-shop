package com.patrickhub.fitnessshop.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.patrickhub.fitnessshop.bean.Order;

/**
 * 
 * @author PatrickHub
 *
 */
public class OrderDao {
	
	private final Logger LOG = Logger.getLogger(OrderDao.class.getName());
	
	/**
	 * Create a new order.
	 * 
	 * @param connection connection to the database
	 * @param order order to save
	 * @return persisted order
	 */
	public Order createOrder(Connection connection, Order order) {
		try {
			
			// write the SQL insert
			String sql = "INSERT INTO orders(addressID, paymentID,"
								+ " orderDate) "
								+ "	VALUES(?,?,?);";
			
			// get preparedStatement
			PreparedStatement statement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
		    // set SQL parameters
			statement.setInt(1,  order.getAddressId());
			statement.setInt(2, order.getPaymentId());
			statement.setDate(3, new Date(order.getDate().getTime()));
			
			// execute the query
			int rows = statement.executeUpdate();
			
			// check if order entity is created
			if (rows == 0) {
	            throw new SQLException("Failled to create order, no rows affected.");
	        }
			
			// check weather paymentID has been generated
	        ResultSet generatedIds = statement.getGeneratedKeys();
            if (generatedIds.next()) {
            	order.setId(generatedIds.getInt(1));
            }
            else {
                throw new SQLException("Failled to create order, no orderID obtained.");
            }
	        
	
			
		} catch (SQLException e) {
			LOG.log(Level.SEVERE, e, null);
		}
		
		return order;
	}

	
}

