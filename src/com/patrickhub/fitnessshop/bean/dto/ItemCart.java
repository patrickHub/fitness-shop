package com.patrickhub.fitnessshop.bean.dto;

public class ItemCart {
	
	private int id;
	private String name;
	private float price;
	private String description;
	private String imgPath;
	private int quantity;
	
	@Override
	public boolean equals(Object obj) {
		if(this == obj) return true;
		if(((ItemCart)obj).getId()  == this.id) return true;
		return false;
		
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getImgPath() {
		return imgPath;
	}
	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	@Override
	public String toString() {
		return "ItemCart [id=" + id + ", name=" + name + ", price=" + price + ", description=" + description
				+ ", imgPath=" + imgPath + ", quantity=" + quantity + "]";
	}
	
	
	
	
	
}
