package com.oracle.ebp.domain.po;

import java.io.Serializable;
import java.sql.Timestamp;

public class User implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 2L;
	private Integer uid;
	private String userName;
	private String password;
	private String name;
	private Integer gender;
	private Integer age;
	private String idCard;
	private String address;
	private String telno;
	private Timestamp regTime;
	private double balance;
	private Integer status;
	private String email;
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getGender() {
		return gender;
	}
	public void setGender(Integer gender) {
		this.gender = gender;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public String getIdCard() {
		return idCard;
	}
	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTelno() {
		return telno;
	}
	public void setTelno(String telno) {
		this.telno = telno;
	}
	public Timestamp getRegTime() {
		return regTime;
	}
	public void setRegTime(Timestamp regTime) {
		this.regTime = regTime;
	}
	public double getBalance() {
		return balance;
	}
	public void setBalance(double balance) {
		this.balance = balance;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(Integer uid, String userName, String password, String name,
			Integer gender, Integer age, String idCard, String address,
			String telno, Timestamp regTime, double balance, Integer status,String email) {
		super();
		this.uid = uid;
		this.userName = userName;
		this.password = password;
		this.name = name;
		this.gender = gender;
		this.age = age;
		this.idCard = idCard;
		this.address = address;
		this.telno = telno;
		this.regTime = regTime;
		this.balance = balance;
		this.status = status;
		this.email = email;
	}
	@Override
	public String toString() {
		return "User [uid=" + uid + ", userName=" + userName + ", password="
				+ password + ", name=" + name + ", gender=" + gender + ", age="
				+ age + ", idCard=" + idCard + ", address=" + address
				+ ", telno=" + telno + ", regTime=" + regTime + ", balance="
				+ balance + ", status=" + status + ", email=" + email + "]";
	}
	
	
}
