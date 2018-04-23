package com.lms.services;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lms.dao.LmsRepository;
import com.lms.models.Book;

@Service
public class LmsService {
	
	@Autowired
	private LmsRepository lmsRepository;
    
	public Collection<Book> findAllBooks(){
		List books = new ArrayList<Book>();
		
		for (Book book : lmsRepository.findAll()) {
			
			 books.add(book);
			
		}
		return books;
	}
	
	public void delete(long id) {
		lmsRepository.deleteById(id);
		
	}
	
	public Optional<Book> findOne(long id) {
		return lmsRepository.findById(id);
	}
	
	public void save(Book book) {
		lmsRepository.save(book);
	}
}


