package com.Capgemini.SpringMVC.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

import com.Capgemini.SpringMVC.entity.Employee;
import com.Capgemini.SpringMVC.services.EmployeeServices;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class EmployeeController {

  
		
	@Autowired
	EmployeeServices employeeServices;


    
	
	@RequestMapping("/allemp")
	public String getAllEmployees(HttpServletRequest request) {
		System.out.println("*************************");
		List<Employee> employees = employeeServices.getAllEmployees();
		for(Employee emp: employees) {
			System.out.println("Emp: "+emp.getName());
		}
		
		request.setAttribute("emplist", employees); 
		//storing the list of employees in request scope to be accessed in JSP
		return "home.jsp";
	}
	
	@PostMapping("/addemp")
	public String createEmployee(HttpServletRequest request) {
		// code to save employee to database
		String empId=request.getParameter("empId");
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String city=request.getParameter("city");
		String contactNoStr=request.getParameter("contactNo");
		
		Employee employee=new Employee();
		employee.setEmpId(empId);
		employee.setName(name);
		employee.setEmail(email);
		employee.setCity(city);
		employee.setContactNo(Integer.parseInt(contactNoStr));
		
		
		System.out.println("Creating employee: " + employee.getName());
		employeeServices.addEmployee(employee);
		// redirect to home page after creating employee
		return "redirect:/allemp";
	}
	
	
//	@GetMapping("/employees")
//	public List<Employee> getAllEmployees() {
//		return employeeServices.getAllEmployees();
//			
//	}
	
	
}
