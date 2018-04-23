package com.lms.dao;

import org.springframework.stereotype.Repository;

import com.lms.models.Book;

import org.springframework.data.repository.CrudRepository;

@Repository
public interface LmsRepository extends CrudRepository<Book, Long>{

}
