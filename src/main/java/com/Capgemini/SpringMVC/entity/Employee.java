package com.Capgemini.SpringMVC.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Employee {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	
	@Column(name="emp_id")
	private String empId;
	
	@Column(name="emp_name")
	private String name;
	
	@Column(name="emp_email")
	private String email;
	
	@Column(name="emp_contact_no")
	private int contactNo;
	
	@Column(name="emp_city")
	private String city;

	

	public Employee() {

	}

	public Employee(String empId, String name, String email, int contactNo, String city) {
		this.empId = empId;
		this.name = name;
		this.email = email;
		this.contactNo = contactNo;
		this.city = city;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmpId() {
		return empId;
	}

	public void setEmpId(String empId) {
		this.empId = empId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getContactNo() {
		return contactNo;
	}

	public void setContactNo(int contactNo) {
		this.contactNo = contactNo;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	
	
	

}
