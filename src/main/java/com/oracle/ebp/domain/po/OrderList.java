package com.oracle.ebp.domain.po;

public class OrderList {
	
	private int lid;
	private String descs;
	private double price;
	private int quantity;
	private double amount;
	private int oid;
	
	
	public int getLid() {
		return lid;
	}
	
	public String getDescs() {
		return descs;
	}
	
	public double getPrice() {
		return price;
	}
	
	public int getQuantity() {
		return quantity;
	}
	
	public double getAmount() {
		return amount;
	}
	
	public int getOid() {
		return oid;
	}
	
	public void setLid(int lid) {
		this.lid = lid;
	}
	
	public void setDescs(String descs) {
		this.descs = descs;
	}
	
	public void setPrice(double price) {
		this.price = price;
	}
	
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	public void setAmount(double amount) {
		this.amount = amount;
	}
	
	public void setOid(int oid) {
		this.oid = oid;
	}

	@Override
	public String toString() {
		return "OrderList [lid=" + lid + ", descs=" + descs + ", price="
				+ price + ", quantity=" + quantity + ", amount=" + amount
				+ ", oid=" + oid + "]";
	}
	
	

}
