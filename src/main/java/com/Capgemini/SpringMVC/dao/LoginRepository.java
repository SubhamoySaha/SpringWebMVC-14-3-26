package com.Capgemini.SpringMVC.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.Capgemini.SpringMVC.entity.UserEntity;

@Repository 
public interface LoginRepository extends JpaRepository<UserEntity, Integer> {
	
	UserEntity findByUsername(String username);
	
}
