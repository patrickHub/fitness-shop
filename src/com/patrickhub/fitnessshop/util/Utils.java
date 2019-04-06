package com.patrickhub.fitnessshop.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.servlet.http.HttpServletRequest;

/**
 * 
 * @author PatrickHub
 *
 */
public class Utils {

	
	public static Date formatDate(String str) {
		Date date = null;
		try {
			String pattern = "yyyy-MM-dd";
			SimpleDateFormat format = new SimpleDateFormat(pattern, Locale.ENGLISH);
			date =  format.parse(str);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date;
	}
	
	/**
	 * Check parameters validity in HttpServletRequest.
	 * 
	 * @param req HttpServletRequest
	 * @return Map of errors
	 */
	public static Map<String, String> validateField(HttpServletRequest req){
		
		// get form parameters and check weather they are valid
		String username = req.getParameter(Fields.USERNAME.toString());
		String password = req.getParameter(Fields.PASSWORD.toString());
		String firstName = req.getParameter(Fields.FIRSTNAME.toString());
		String lastName = req.getParameter(Fields.LASTNAME.toString());
		String email = req.getParameter(Fields.EMAIL.toString());
		String phone = req.getParameter(Fields.PHONE.toString());
		String birthdate = req.getParameter(Fields.BIRTHDATE.toString());
		String country = req.getParameter(Fields.COUNTRY.toString());
		String street = req.getParameter(Fields.STREET.toString());
		String zipCode = req.getParameter(Fields.ZIPCODE.toString());
		String city = req.getParameter(Fields.CITY.toString());
		
		
		Map<String, String> errors = new HashMap<String, String>();
		System.out.println("birtdate: " + birthdate);

		
		if(username==null || username == "" || !username.matches(".*[a-zA-Z]+.*") || username.length()<5 || username.length()>10) {
			errors.put(Fields.USERNAME.toString(), "Please provide a valid username");
		}
		if(password == null || password == "" || password.length()<5 || password.length()>10) {
			errors.put(Fields.PASSWORD.toString(), "Please provide a valid password");
		}
		if(firstName == null || firstName == "" || firstName.length()>30) {
			errors.put(Fields.FIRSTNAME.toString(), "Please provide a valid first name");
		}
		if(lastName == null || lastName == "" || lastName.length()>30) {
			errors.put(Fields.LASTNAME.toString(), "Please provide a valid last Name");
		}
		if(email == null || email == "" || email.length()>30 || !isValidEmail(email)) {
			errors.put(Fields.EMAIL.toString(), "Please provide a valid email");
		}
		if(phone == null || phone == "" || !phone.matches("^[0-9]{10}$")) {
			errors.put(Fields.PHONE.toString(), "Please provide a valid phone");
		}
		if(!isValidDate(birthdate)) {
			errors.put(Fields.BIRTHDATE.toString(), "Please provide a valid birthdate");
		}
		if(country == null || country == "" || country.length()>30) {
			errors.put(Fields.COUNTRY.toString(), "Please provide a valid country");
		}
		if(street == null || street == "" || street.length()>30) {
			errors.put(Fields.STREET.toString(), "Please provide a valid street address");
		}
		if(zipCode == null || zipCode == "" || zipCode.length()>10 || !zipCode.matches("^[0-9]*$")) {
			errors.put(Fields.ZIPCODE.toString(), "Please provide a valid zip code");
		}
		if(city == null || city == "" || city.length()>30 || !city.matches(".*[a-zA-Z]+.*")) {
			errors.put(Fields.CITY.toString(), "Please provide a valid city");
		}
		return errors;
	}
	
	/**
	 * Check weather an email is valid.
	 * 
	 * @param email to check
	 * @return boolean
	 */
	 private static boolean isValidEmail(String email) {
		   boolean isValid = true;
		   try {
		      InternetAddress emailAddress = new InternetAddress(email);
		      emailAddress.validate();
		   } catch (AddressException ex) {
		      isValid = false;
		   }
		   return isValid;
		}
	 
	 /**
	  * Check if a string date is valid.
	  * 
	  * @param str string date
	  * @return boolean
	  */
	 private static boolean isValidDate(String str) {
		 boolean isValid = true;
		 try {
				String pattern = "yyyy-MM-dd";
				SimpleDateFormat format = new SimpleDateFormat(pattern, Locale.ENGLISH);
				Date date =  format.parse(str);
				System.out.println("new date: " + date);
				if(!date.before(new Date(System.currentTimeMillis()))) {
					isValid = false;
				}
				
			} catch (ParseException e) {
				System.out.println("invalid Date");
				isValid = false;
			}
		 return isValid;
	 }
	 

}