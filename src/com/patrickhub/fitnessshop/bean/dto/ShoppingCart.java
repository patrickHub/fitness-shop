package com.patrickhub.fitnessshop.bean.dto;

import java.util.Enumeration;
import java.util.Vector;

public class ShoppingCart {
	
	// vector to store the shipping cart items
    private Vector<ItemCart> vectors;

	public ShoppingCart() {
		this.vectors = new Vector<ItemCart>();
	}
    
	
	/**
	 * add an itemCart to the shopping cart.
	 * 
	 * @param item item to store
	 */
	public synchronized void addItem(ItemCart item) {
		
		// get all itemCarts from the vectors
		Enumeration<ItemCart> items = vectors.elements();
		
		int index = vectors.indexOf(item);
		
		if(index >-1) {
			vectors.get(index).setQuantity(vectors.get(index).getQuantity() + item.getQuantity());
			
			return;
		
		// loop in oder to check if the item already exist in the shopping cart
		/*while(items.hasMoreElements()) {
			ItemCart itemTmp = (ItemCart)items.nextElement();
			
			if(itemTmp.equals(item)) {
				System.out.println("There are the same product");
				// the item already exists then update quantity and leave
				int index = vectors.
				
				item.setQuantity(itemTmp.getQuantity() + item.getQuantity());
				return;
			}*/
		}
		
		// the item don't exists then add it to the shopping cart
		vectors.add(item);
		
	}
	
	
	/**
	 * remove an itemCart from the shopping cart.
	 * 
	 * @param index index of the item to remove
	 */
	public synchronized void removeItem(ItemCart item) {
		
		/*// get the item from vectors
		ItemCart item = vectors.get(index);
		
		// remove the item from vectors if the quantity reaches zero
		if(item.getQuantity() -1 <= 0) {
			vectors.removeElementAt(index);
			return;
		}
		
		// the item quantity is more than one then decrement the quantity
		item.setQuantity(item.getQuantity() - 1);*/
	}


	public Vector<ItemCart> getVectors() {
		return vectors;
	}


	public void setVectors(Vector<ItemCart> vectors) {
		this.vectors = vectors;
	}
	
	
		
    
    
    
    
    
}
