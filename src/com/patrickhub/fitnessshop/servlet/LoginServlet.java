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
public class LoginServlet extends HttpServlet{
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// get request dispatcher and send control to login.jsp
		req.getRequestDispatcher("jsp/login.jsp").forward(req, resp);
	}
}
