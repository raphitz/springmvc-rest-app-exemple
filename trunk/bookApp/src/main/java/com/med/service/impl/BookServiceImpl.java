package com.med.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import com.med.dao.BookDAO;
import com.med.model.Book;
import com.med.service.BookService;

public class BookServiceImpl implements BookService{

	BookDAO BookDao;
	
	
	
	public void setBookDao(BookDAO BookDao) {
		this.BookDao = BookDao;
	}
	
	
	public BookDAO getBookDao() {
		return BookDao;
	}
	
	
	public void addBook(Book p) {
		BookDao.addBook(p);		
	}

	@Transactional
	public List<Book> listBooks() {
		return BookDao.listBooks();
	}

}
