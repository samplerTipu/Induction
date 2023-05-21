package com.crud.dao;

import java.util.List;
import java.util.Optional;

import com.crud.pojo.Employee;

public interface MyInMemoryRepo {

	String add(Employee employee);
	String update(Employee employee);
	String delete(Integer emp_ID);
	Employee search(Integer emp_ID);
	List<Employee> getAll();
}
