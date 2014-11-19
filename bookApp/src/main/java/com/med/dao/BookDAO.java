package com.med.dao;

import java.util.List;

import com.med.model.Book;

public interface BookDAO {

	public Book getBookById(int id);
	
	public void addBook(Book p);
	
	public void removeBook(Book book);

	public List<Book> listBooks();

	public void updateBook(Book book);


}
