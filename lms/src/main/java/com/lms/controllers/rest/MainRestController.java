package com.lms.controllers.rest;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.lms.models.Book;
import com.lms.services.LmsService;

@RestController
public class MainRestController {
	
	@Autowired
	private LmsService LmsService;
	
	
	@GetMapping("/findAllbooks")
	public Collection<Book> getAllBooks(){
		
		return LmsService.findAllBooks();
		
	}
	
	@GetMapping("/delete")
	public void deleteBook(@RequestParam long id) {
		LmsService.delete(id);
		
	}

}
