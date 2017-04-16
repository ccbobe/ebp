package com.oracle.ebp.domain.po;

import java.io.Serializable;
import java.sql.Timestamp;

public class Ticket implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int tid;
	private String descs;
	private Timestamp startTime;
	private int amount;
	private  int balance;
	private double price;
	private int status;
	public int getTid() {
		return tid;
	}
	public String getDescs() {
		return descs;
	}
	public Timestamp getStartTime() {
		return startTime;
	}
	public int getAmount() {
		return amount;
	}
	public int getBalance() {
		return balance;
	}
	public double getPrice() {
		return price;
	}
	public int getStatus() {
		return status;
	}
	
	public void setTid(int tid) {
		this.tid = tid;
	}
	public void setDescs(String descs) {
		this.descs = descs;
	}
	public void setStartTime(Timestamp startTime) {
		this.startTime = startTime;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public void setBalance(int balance) {
		this.balance = balance;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "Ticket [tid=" + tid + ", descs=" + descs + ", startTime="
				+ startTime + ", amount=" + amount + ", balance=" + balance
				+ ", price=" + price + ", status=" + status + "]";
	}
	
	

}
