package com.crud.exceptionHandler;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import com.crud.exception.EmployeeNotFoundException;

@ControllerAdvice
public class MyGlobalException {
	private final String STATUS = "status";

	@ExceptionHandler(EmployeeNotFoundException.class)
	public String employeeNotFound(Exception e, HttpServletRequest request) {
		request.setAttribute(STATUS, e.toString());
		return "error";
	}

}
