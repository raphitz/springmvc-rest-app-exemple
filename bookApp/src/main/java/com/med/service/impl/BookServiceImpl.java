package com.med.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import com.med.dao.BookDAO;
import com.med.model.Book;
import com.med.service.BookService;

public class BookServiceImpl implements BookService{

	BookDAO BookDao;
	
	
	@Transactional
	public Book getBookById(int id) {
		return this.BookDao.getBookById(id);
		
	}
	
	public void setBookDao(BookDAO BookDao) {
		this.BookDao = BookDao;
	}
	
	
	public BookDAO getBookDao() {
		return BookDao;
	}
	
	
	@Transactional
	public void addBook(Book b) {
		BookDao.addBook(b);		
	}

	@Transactional
	public List<Book> listBooks() {
		return BookDao.listBooks();
	}

	@Transactional
	public void removeBook(Book book) {
	  BookDao.removeBook(book);		
	}

	@Transactional
	public void updateBook(Book book) {
		BookDao.updateBook(book);
	}


}
