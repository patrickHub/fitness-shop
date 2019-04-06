package com.patrickhub.fitnessshop.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.patrickhub.fitnessshop.bean.dto.ItemCart;
import com.patrickhub.fitnessshop.bean.dto.ShoppingCart;

/**
 * 
 * @author PatrickHub
 *
 */
public class ShoppingCartServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("jsp/shoppingCart.jsp").forward(req, resp);
	}
	@Override
	protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// get request parameters
		int id = Integer.parseInt(req.getParameter("id"));
		int quantity = Integer.parseInt(req.getParameter("quantity"));
		
		// get user session
		HttpSession session = req.getSession();
		
		// get user shopping cart
		ShoppingCart cart = (ShoppingCart)session.getAttribute("cart");
		
		// update the current item
		cart.updateItemById(id, quantity);
		
		// set shopping cart inside session
		session.setAttribute("cart", cart);
		System.out.println("Update shopping cart id: " + id + " quantity: " + quantity);
		
		// passe control to shoppingCart.jsp
		req.getRequestDispatcher("jsp/shoppingCart.jsp").forward(req, resp);
		
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
				
				
		
		// get user session
		HttpSession session = req.getSession();
		
		// get user shopping cart
		ShoppingCart cart = (ShoppingCart)session.getAttribute("cart");
		
		// check weather the shopping cart exists if not create one
		if(cart == null) {
			cart = new ShoppingCart();
		}
				
		
		String method = req.getParameter("_method");
		if(method !=null) {
			// get request parameters
			int id = Integer.parseInt(req.getParameter("id"));
			int quantity = Integer.parseInt(req.getParameter("quantity"));
			
			// update the current item
			cart.updateItemById(id, quantity);
			System.out.println("Update shopping cart id: " + id + " quantity: " + quantity + " method: " + method);
		}else {
		
		
			// create new itemCart
			ItemCart item = new ItemCart();
			
			// set the new ItemCart with selected item
			item.setId(Integer.parseInt(req.getParameter("id")));
			item.setName(req.getParameter("name"));
			item.setPrice(Float.parseFloat(req.getParameter("price")));
			item.setQuantity(Integer.parseInt(req.getParameter("quantity")));
			item.setDescription(req.getParameter("description"));
			item.setImgPath(req.getParameter("imgPath"));
			
			// add the new itemCart to the shopping cart
			cart.addItem(item);
		}
			
		
		// set shopping cart inside session
		session.setAttribute("cart", cart);
		
		// 
		req.getRequestDispatcher("jsp/shoppingCart.jsp").forward(req, resp);
	
	}
	
}