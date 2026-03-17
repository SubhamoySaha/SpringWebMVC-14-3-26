package com.Capgemini.SpringMVC.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.Capgemini.SpringMVC.entity.UserEntity;
import com.Capgemini.SpringMVC.services.LoginServices;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;

@Controller
public class LoginController {

   
	
	@Autowired
	LoginServices loginServices;


   

	
	
	@GetMapping("/")
	public String login(Model model) {
		// show login page
		return "login.jsp";
	}

	@PostMapping("/login")
	public String validate(String username, String password, HttpServletRequest request,HttpServletResponse response) {
			// simple placeholder validation: accept any non-empty username/password

		String page=null;
		System.out.println("Username: " + username+ " Password: " + password);
		
		boolean flag=loginServices.validateUser(username, password);
		if(flag) {
			page="welcome.jsp";
			try {
				request.getRequestDispatcher("/allemp").forward(request, response);
				
				} catch (Exception e) {
					e.printStackTrace();
					
			}
		}
		else {
			page="login.jsp";
		}
		return page;
	}
	
	@GetMapping("/addemp")
	public String addEmp() {
		return "addemp.jsp";
	}
	
	@GetMapping("/register")
	public String showRegister() {
		return "register.jsp";
	}


	
	@PostMapping("/register")
	public String register(HttpServletRequest request) {
		// very simple placeholder registration: accept non-empty values
		String name=request.getParameter("username");
		String password=request.getParameter("password");
		
		System.out.println("Username: " + name+ " Password: " + password);
		UserEntity userEntity=new UserEntity();
		userEntity.setUsername(name);
		userEntity.setPassword(password);
		
		loginServices.registerUser(userEntity);
		
		return "login.jsp";
		
		
	}

	@GetMapping("/forgot")
	public String showForgot() {
		return "forgot.jsp";
	}

	@PostMapping("/forgot")
	public String forgot(String username, Model model) {
		// simple placeholder: pretend we sent a reset link if username provided
		if (username != null && !username.isBlank()) {
			model.addAttribute("msg", "If an account exists for '" + username + "', a reset link has been sent.");
		} else {
			model.addAttribute("error", "Please enter your username or email.");
		}
		return "login.jsp";
	}
	
	
	
}