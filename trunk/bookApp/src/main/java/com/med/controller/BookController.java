package com.med.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.med.model.Book;
import com.med.service.BookService;

/**
 * 
 * @author Med
 * @version 1.0
 *
 */

@Controller
public class BookController {
     
    private BookService bookService;

    /**
     * @param model
     * @return List of books
     */
    @RequestMapping(value = "/Books", method = RequestMethod.GET)  
    public @ResponseBody List<Book> listBooks(Model model) {
       return this.bookService.listBooks();
    }
     

    @RequestMapping(value = "/Book/add", method = RequestMethod.POST)
    @ResponseBody
    public  String createBook(@RequestBody Book book) {
    	 this.bookService.addBook(book);
        return "/livres";
    }
     
     
    
   @Autowired(required=true)
   @Qualifier(value="BookService")
   public void setBookService(BookService ps){
       this.bookService = ps;
   }
    
   
   @RequestMapping(value = "/Book/remove", method = RequestMethod.POST)
   public String removeAd(@RequestBody int  id) {
	   
       Book book  = this.bookService.getBookById(id);       
       bookService.removeBook(book);
       return "/livres";
   }
   
   @RequestMapping(value = "/Book/update", method = RequestMethod.POST)
   public String updateBook(@RequestBody Book  book) {
	   
	   bookService.updateBook(book);       
	   return "/livres";
   }
}
