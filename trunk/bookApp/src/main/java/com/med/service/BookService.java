package com.med.service;

import java.util.List;

import com.med.model.Book;

public interface BookService {
	
	public void addBook(Book p);


	public List<Book> listBooks();

}
