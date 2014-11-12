package com.med.dao;

import java.util.List;

import com.med.model.Book;

public interface BookDAO {

	public void addBook(Book p);

	public List<Book> listBooks();


}
