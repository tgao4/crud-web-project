package com.cruddemo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cruddemo.model.Items;
import com.cruddemo.repository.ItemsRepository;

@Service
public class ItemsServiceImpl implements ItemsService {

	@Autowired
	private ItemsRepository itemsRepository;

	@Override
	@Transactional
	public void saveItems(Items theItems) {
		itemsRepository.save(theItems);
	}

	@Override
	@Transactional
	public List<Items> findByUsername(String username) {
		return itemsRepository.findByUsername(username);
	}

	@Override
	@Transactional
	public Items findById(long id) {
		return itemsRepository.findById(id);
	}

	@Override
	@Transactional
	public void delete(long id) {

		itemsRepository.delete(id);
	}

	@Override
	@Transactional
	public List<Items> findAll() {
		return itemsRepository.findAll();
	}

}
