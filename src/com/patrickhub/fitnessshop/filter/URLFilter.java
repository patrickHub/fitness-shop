package com.patrickhub.fitnessshop.filter;


import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

public class URLFilter implements Filter{
	
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		// pre-possessing 
		HttpServletRequest req = (HttpServletRequest)request;
		//System.out.println("URL : "  + req.getRequestURI());
		// verify that the given id parameter exists and is an number
		if(req.getRequestURI().startsWith("/fitness-shop/product")) {
			//System.out.println("URL : "  + req.getRequestURI());
			// check if the id parameter exist
			if(req.getParameterMap().containsKey("id")) {
				String id = req.getParameter("id");
				try {
					// check weither the given id parameter can be convert to int
					int tmp = Integer.parseInt(id);
					System.out.println("URL : "  + req.getRequestURI());
				}catch(NumberFormatException  e) {
					
					// id parameter is not an number then send the notFound page to user
					req.getRequestDispatcher("jsp/notFound.jsp").forward(request, response);
				}
					
			}else {
				
				// id parameter does not exist then send the notFound page to the user
				req.getRequestDispatcher("jsp/notFound.jsp").forward(request, response);
			}
		}
		
		// take the controle the next servlet or the next filter
		chain.doFilter(request, response);
		
		// post-possessing
		
	}


}
