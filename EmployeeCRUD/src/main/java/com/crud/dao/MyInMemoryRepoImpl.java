package com.crud.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import java.util.TreeSet;

import org.springframework.stereotype.Repository;

import com.crud.exception.EmployeeNotFoundException;
import com.crud.pojo.Employee;

@Repository
public class MyInMemoryRepoImpl implements MyInMemoryRepo {

	private HashMap<Integer, Employee> map = new HashMap<>();
	{
		for (int i = 1; i <= 10; i++) {
			map.put(i, new Employee(i, "Tipu" + i, 10000d * i, i % 2 == 0 ? "male" : "female"));
		}

	}

	@Override
	public String add(Employee employee) {
		try {
			if (map.containsKey(employee.getEmp_ID())) {
				return "Employee Already Exist!! Please Try with SomeAnother ID";
			} else {
				map.put(employee.getEmp_ID(), employee);
				return "Thankyou For Registering... ID is Successfully Inserted!!!";
			}
		} catch (Exception e) {
			return "Something went wrong!!!!";
		}
	}

	@Override
	public String update(Employee employee) {
		try {
			if (map.containsKey(employee.getEmp_ID())) {
				map.put(employee.getEmp_ID(), employee);
				return "Updated successfully!!!";
			} else {
				throw new EmployeeNotFoundException();
			}
		} catch (Exception e) {
			return "Something went wrong!!!!";
		}
	}

	@Override
	public String delete(Integer emp_ID) {
		try {
			if (map.containsKey(emp_ID)) {
				map.remove(emp_ID);
				return "Deleted successfully!!!";
			} else {
				return "Id Does Not Exist";
			}
		} catch (Exception e) {
			return "Something went wrong!!!!";
		}
	}

	@Override
	public Employee search(Integer emp_ID) {
		Optional<Employee> optEmp = Optional.ofNullable(map.get(emp_ID));
		if (optEmp.isPresent())
			return optEmp.get();
		else
			throw new EmployeeNotFoundException();
	}

	@Override
	public List<Employee> getAll() {
		Set<Integer> set = map.keySet();
		List<Employee> list = new ArrayList<>();
		for(Integer i : set) {
			list.add(map.get(i));
		}
		return list;
	}

}
