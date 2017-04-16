package com.oracle.ebp.controller;

public class Test4 implements Foo {
	public static void main(String[] args) {
		int i;
		Test4 test4=new Test4();
		//i=test4.k;
		i=Test4.k;
		i=Foo.k;
		//System.out.println(i);
		
		Float f=3.02f;
		float foo=-1;
		float f2=0x0123;
		String s;
		System.out.println(5.0/2);
		
		//int f3=2.0f;
		
	}
	
	
	public int aMathod(){
		int i=0;
		i++;
		
		return i;
	}
	
	public double BMathod(byte x,double y){
		return (short)x/y*2;
	}
	
	
}
