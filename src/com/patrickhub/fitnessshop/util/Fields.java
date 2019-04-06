package com.patrickhub.fitnessshop.util;

public enum Fields {
	
	USERNAME("username"),
	PASSWORD("password"),
	FIRSTNAME("firstName"),
	LASTNAME("lastName"),
	EMAIL("email"),
	PHONE("phone"),
	BIRTHDATE("birthdate"),
	COUNTRY("country"),
	STREET("street"),
	ZIPCODE("zipCode"),
	CITY("city"),
	QUANTITY("quantity");
	
	
	private final String field;
	
	/**
	 * private constructor.
	 * 
	 * @param field
	 */
	private Fields(final String field) {
		this.field = field;
	}
	
	@Override
	public String toString() {
		return field;
	}
}
