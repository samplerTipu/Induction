package com.crud.pojo;

public class Employee implements Comparable<Integer> {

	private Integer emp_ID;
	private String emp_name;
	private Double emp_salary;
	private String emp_gender;

	public Employee() {

	}

	public Employee(Integer emp_ID, String emp_name, Double emp_salary, String emp_gender) {
		super();
		this.emp_ID = emp_ID;
		this.emp_name = emp_name;
		this.emp_salary = emp_salary;
		this.emp_gender = emp_gender;
	}

	public Integer getEmp_ID() {
		return emp_ID;
	}

	public void setEmp_ID(Integer emp_ID) {
		this.emp_ID = emp_ID;
	}

	public String getEmp_name() {
		return emp_name;
	}

	public void setEmp_name(String emp_name) {
		this.emp_name = emp_name;
	}

	public Double getEmp_salary() {
		return emp_salary;
	}

	public void setEmp_salary(Double emp_salary) {
		this.emp_salary = emp_salary;
	}

	public String getEmp_gender() {
		return emp_gender;
	}

	@Override
	public String toString() {
		return "Employee [emp_ID=" + emp_ID + ", emp_name=" + emp_name + ", emp_salary=" + emp_salary + ", emp_gender="
				+ emp_gender + "]";
	}

	public void setEmp_gender(String emp_gender) {
		this.emp_gender = emp_gender;
	}
	@Override
	public int compareTo(Integer emp_ID) {
		return this.emp_ID.compareTo(emp_ID);
	}
}
