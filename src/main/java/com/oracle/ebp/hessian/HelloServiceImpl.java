package com.oracle.ebp.hessian;

public class HelloServiceImpl implements HelloService {
	
	@Override
	public String helloWorld(String message) {
		return "这是ebp提供"+message;
	}
	
}
