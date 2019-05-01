package com.patrickhub.fitnessshop.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.patrickhub.fitnessshop.bean.dto.ItemCart;

/**
 * 
 * @author PatrickHub
 *
 */
public class OrderItemDao {

private final Logger LOG = Logger.getLogger(OrderItemDao.class.getName());
	
	/**
	 * Create a new orderItem.
	 * 
	 * @param connection connection to the database
	 * @param itemCart itemCart to save
	 * @return persisted order
	 */
	public ItemCart createOrderItem(Connection connection, ItemCart itemCart, int orderId) {
		try {
			
			// write the SQL insert
			String sql = "INSERT INTO orderItems(orderID, productID,"
								+ " orderItemQuantity) "
								+ "	VALUES(?,?,?);";
			// get preparedStatement
			PreparedStatement statement = connection.prepareStatement(sql);
		    // set SQL parameters
			statement.setInt(1, orderId);
			statement.setInt(2, itemCart.getId());
			statement.setInt(3, itemCart.getQuantity());
			
			// execute the query
			int rows = statement.executeUpdate();
			
			// check if orderItem entity is created
			if (rows == 0) {
	            throw new SQLException("Failled to create orderItem, no rows affected.");
	        }
			
			
		} catch (SQLException e) {
			LOG.log(Level.SEVERE, e, null);
		}
		
		return itemCart;
	}

}
