package com.Capgemini.SpringMVC.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;

import com.Capgemini.SpringMVC.dao.EmployeeRepository;
import com.Capgemini.SpringMVC.entity.Employee;

@Service
public class EmployeeServices {

	@Autowired
	EmployeeRepository employeeRepository;

	public List<Employee> getAllEmployees() {
		return employeeRepository.findAll();
	}

	public void addEmployee(Employee employee) {
		employeeRepository.save(employee);
	}

	public void deleteEmployee(int id) {
		employeeRepository.deleteById(id);
	}

	public void updateEmployee(Employee employee) {
		employeeRepository.save(employee);
	}

//	@SuppressWarnings("deprecation")
	public Optional<Employee> getEmployeeById(int id) {
		return employeeRepository.findById(id);
	}
}
