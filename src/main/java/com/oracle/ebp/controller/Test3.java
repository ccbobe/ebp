package com.oracle.ebp.controller;

public class Test3 {
	
	private int c;
	
	
	
	public Test3() {
		super();
		// TODO Auto-generated constructor stub
	}

	 Test3(int c) {
		super();
		this.c = c;
	}

	public static void main(String[] args) {
		StringBuffer a=new StringBuffer("A");
		StringBuffer b=new StringBuffer("B");
		option(a, b);
		System.out.println(a+","+b);
	}
	
	static void option(StringBuffer x,StringBuffer y){
		x.append(y);
		y=x;
		
	}
}
