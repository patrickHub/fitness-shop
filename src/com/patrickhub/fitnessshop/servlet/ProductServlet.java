package com.patrickhub.fitnessshop.servlet;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.patrickhub.fitnessshop.bean.Product;
import com.patrickhub.fitnessshop.dao.ProductDao;

/**
 * HttpServlet for 
 * @author PatrickHub
 *
 */

//@WebServlet("/product")
public class ProductServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// get product id from request
		String id = req.getParameter("id");
		
		
		// get connection to database
		Connection connection = (Connection)getServletContext().getAttribute("connection");
		
		// get the "id" product
		ProductDao productDao = new ProductDao();
		Product product = productDao.findById(connection, Integer.parseInt(id));
		
		// pass the control to product.jsp
		req.setAttribute("product", product);
		req.getRequestDispatcher("jsp/product.jsp").forward(req, resp);
		
	}
	
	
}
