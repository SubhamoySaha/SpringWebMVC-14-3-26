package com.Capgemini.SpringMVC.services;



import com.Capgemini.SpringMVC.model.UserEntity;
import com.Capgemini.SpringMVC.repository.LoginRepository;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;


@Service
public class LoginServices {
 	// This service class can be used to implement business logic related to login, registration, etc.
	// For example, you could add methods to validate user credentials against a database,
	// handle password hashing, manage user sessions, etc.
	
	@Autowired
	LoginRepository loginRepository;
	
	public UserEntity registerUser(UserEntity user) {
		// In a real application, you would want to check if the username already exists,
		// hash the password, and handle any other registration logic.
		
		
		 loginRepository.save(user);
		return user;
	}
	
	public boolean validateUser(String username, String password) {
		// In a real application, you would retrieve the user from the database and compare the hashed password.
		// This is just a placeholder implementation.
		UserEntity user = loginRepository.find(username);
		if(user != null && user.getPassword().equals(password)) {
			return true; // User found, validation successful
		}
		return false; // Assume validation is successful for demonstration purposes
	}
}
