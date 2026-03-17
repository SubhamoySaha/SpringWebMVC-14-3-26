package com.Capgemini.SpringMVC.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.Capgemini.SpringMVC.entity.Employee;

public interface EmployeeRepository extends JpaRepository<Employee, Integer> {
	
	//Employee findByEmpId(String empId);
	
}
