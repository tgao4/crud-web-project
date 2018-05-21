package com.cruddemo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.cruddemo.model.Items;

public interface ItemsRepository extends JpaRepository<Items, Long>{

	List<Items> findByUsername(String username);
	
	Items findById(long id);
	
	List<Items> findAll();
	
}