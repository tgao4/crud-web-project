package com.cruddemo.service;

import java.util.List;

import com.cruddemo.model.Items;

public interface ItemsService {

	void saveItems(Items theItems);
	
	List<Items> findByUsername(String username);
	
	Items findById(long id);
	
	void delete(long id);
	
	List<Items> findAll();
}
