package com.patrickhub.fitnessshop.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * 
 * @author PatrickHub
 *
 */
public class CheckoutAddressServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// get request dispatcher and send control to checkoutAddress.jsp
		req.getRequestDispatcher("jsp/checkoutAddress.jsp").forward(req, resp);
	}

}
