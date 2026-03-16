package com.Capgemini.SpringMVC.model;

import jakarta.persistence.*;

@Entity
@Table(name = "user_info")
public class UserEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name="name")
	private String username;
	
	@Column
	private String password;

	public UserEntity() {

	}

	public UserEntity(String username, String password) {
		this.username = username;
		this.password = password;
	}

	public int getId() {
		return id;
	}


	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
