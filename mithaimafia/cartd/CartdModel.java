package com.mithaimafia.cartd;

public class CartdModel {

	private int price;
	private String dishname;
	private String id;
	
	
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getDishname() {
		return dishname;
	}
	public void setDishname(String dishname) {
		this.dishname = dishname;
	}
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	@Override
	public String toString() {
		return "CartdModel [ dishname=" + dishname + ", price=" + price + "]";
	}
	
	
	
	
	
}
