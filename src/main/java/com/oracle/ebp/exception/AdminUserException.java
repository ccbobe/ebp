package com.oracle.ebp.exception;

public class AdminUserException extends Exception {

	private static final long serialVersionUID = 1L;
	
	
	
	public AdminUserException() {
		super();
	}



	public AdminUserException(String message, Throwable cause,
			boolean enableSuppression, boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
	}



	public AdminUserException(String message, Throwable cause) {
		super(message, cause);
	}



	public AdminUserException(String message) {
		super(message);
	}



	public AdminUserException(Throwable cause) {
		super(cause);
	}



	@Override
	public String getMessage() {
		return super.getMessage();
	}
	
	

}
