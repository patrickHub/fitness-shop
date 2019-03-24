package com.patrickhub.fitnessshop.bean;

import java.util.Date;

/**
 * Order Bean
 * @author PatrickHub
 *
 */
public class Order {

	private int id;
	private int customerId;
	private Date date;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCustomerId() {
		return customerId;
	}
	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	
}
