package com.med.service;

import java.util.List;

import com.med.model.Book;

public interface BookService {
	
	public Book getBookById(int id);
	
	public void updateBook(Book book);

	public void addBook(Book book);

	public void removeBook(Book book);
	
	public List<Book> listBooks();

}
