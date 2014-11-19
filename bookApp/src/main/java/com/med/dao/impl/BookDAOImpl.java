package com.med.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.med.dao.BookDAO;
import com.med.model.Book;

@Repository
public class BookDAOImpl implements BookDAO{

	
	 private SessionFactory sessionFactory;
	
	 

	 
	public void addBook(Book p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(p);

	}


	public List<Book> listBooks() {
		Session session = this.sessionFactory.getCurrentSession();
		
        List<Book> booksList = session.createQuery("from Book").list();
		return booksList;
	}

	
	public void removeBook(Book book) {
	
	  Session session = this.sessionFactory.getCurrentSession();	
      session.delete(book);
      
	}
	
	public Book getBookById(int id) {
		  Session session = this.sessionFactory.getCurrentSession();	
	      return (Book) session.get(Book.class, id);
	}
	
	 public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	 
	 
	 public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void updateBook(Book book) {
		  Session session = this.sessionFactory.getCurrentSession();	
	      session.saveOrUpdate(book);      		
	}
	 
	 
}
