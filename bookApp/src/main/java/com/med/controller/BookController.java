package com.med.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.med.model.Book;
import com.med.service.BookService;

@Controller
public class BookController {
     
    private BookService BookService;

    @RequestMapping(value = "/Books", method = RequestMethod.GET)  
    public @ResponseBody List<Book> listBooks(Model model) {
       return this.BookService.listBooks();
    }
     

    @RequestMapping(value = "/Book/add", method = RequestMethod.POST)
    @ResponseBody
    public  String createBook(@RequestBody Book book) {
    	 this.BookService.addBook(book);
        return "/bookDoc";
    }
     
     
    
   @Autowired(required=true)
   @Qualifier(value="BookService")
   public void setBookService(BookService ps){
       this.BookService = ps;
   }
    
   @RequestMapping(value = "/Book/remove", method = RequestMethod.POST)
   public String removeAd(@RequestBody int  id) {
	   
       Book book  = this.BookService.getBookById(id);       
       BookService.removeBook(book);
       return "/bookDoc";
   }
}