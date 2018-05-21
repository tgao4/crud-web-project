package com.cruddemo.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cruddemo.model.Items;
import com.cruddemo.service.ItemsService;


@Controller
public class MainController {
	
	@Autowired
	private ItemsService itemsService;

	@RequestMapping(value = "/showFormForAdd", method = RequestMethod.GET)
	public String showFormForAdd(Model theModel) {
		// create model attribute to bind form data
		Items theItems = new Items();

		theModel.addAttribute("item", theItems);

		return "post-form";
	}
	
	@RequestMapping(value = "/saveItem", method = RequestMethod.POST)
	public String saveItem(@ModelAttribute("item") Items theItems, Authentication authentication) {
		
		theItems.setUserName(authentication.getName());
		System.out.println(theItems.getUserName());
		// save the item using service
		itemsService.saveItems(theItems);
		
		return "redirect:/";
	}
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String listCustomers(Model theModel, Authentication authentication) {
		
		String username = authentication.getName();
		// get users from the service
		List<Items> theItems = itemsService.findByUsername(username);
				
		// add the item list to the model
		theModel.addAttribute("items", theItems);
		
		return "list-items";
	}
	
	@RequestMapping(value = "/showFormForUpdate", method = RequestMethod.GET)
	public String showFormForUpdate(@RequestParam("itemId") long theId, Model theModel) {
		
		// get the item from service
		Items theItem = itemsService.findById(theId);
		
		// set the item as a model attribute to pre-populate the form
		theModel.addAttribute("item", theItem);
		
		// send over to form		
		return "update-form";
	}
	
	@RequestMapping(value = "/updateItem", method = RequestMethod.POST)
	public String updateItem(@ModelAttribute("item") Items theItems, Authentication authentication) {
		
		long theId = theItems.getId();
		theItems.setUserName(authentication.getName());
		theItems.setId(theId);
		
		itemsService.saveItems(theItems);
		
		return "redirect:/list";
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String deleteCustomer(@RequestParam("itemdeleteId") int theId) {
		
		// delete the item
		itemsService.delete(theId);
		
		return "redirect:/list";
	}
	
	
	@RequestMapping(value = "/showDetail", method = RequestMethod.GET)
	public String showDetail(@RequestParam("itemId") long theId, Model theModel) {
		
		// get the item from service
		Items theItem = itemsService.findById(theId);
		
		theModel.addAttribute("item", theItem);
			
		return "show-detail";
	}
}