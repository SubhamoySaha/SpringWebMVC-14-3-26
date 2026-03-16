package com.Capgemini.SpringMVC.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.Capgemini.SpringMVC.model.UserEntity;

@Repository 
public interface LoginRepository extends JpaRepository<UserEntity, Integer> {
	
	UserEntity find(String username);
	
}
