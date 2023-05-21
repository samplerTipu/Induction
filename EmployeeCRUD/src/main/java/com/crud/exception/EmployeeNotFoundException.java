package com.crud.exception;

public class EmployeeNotFoundException extends RuntimeException{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	public String toString() {
		return getMessage();
	}
	@Override
	public String getMessage() {
		return"No Employee Found in Database";
	}
}
