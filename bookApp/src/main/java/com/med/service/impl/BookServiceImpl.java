package com.med.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import com.med.dao.BookDAO;
import com.med.model.Book;
import com.med.service.BookService;

public class BookServiceImpl implements BookService{

	BookDAO bookDao;
	
	
	@Transactional
	public Book getBookById(int id) {
		return this.bookDao.getBookById(id);
		
	}
	
	public void setBookDao(BookDAO BookDao) {
		this.bookDao = BookDao;
	}
	
	
	public BookDAO getBookDao() {
		return bookDao;
	}
	
	
	@Transactional
	public void addBook(Book b) {
		bookDao.addBook(b);		
	}

	@Transactional
	public List<Book> listBooks() {
		return bookDao.listBooks();
	}

	@Transactional
	public void removeBook(Book book) {
	  bookDao.removeBook(book);		
	}

	@Transactional
	public void updateBook(Book book) {
		bookDao.updateBook(book);
	}


}
