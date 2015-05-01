package cn.wtu.service;

import java.util.List;

import cn.wtu.model.Book;
import cn.wtu.model.Page;

public interface BookService {
	public void add(Book book);
	public void del(Book book);
	public void update(Book book);
	public List<Book> getAll();
	public Page getPage(String pagenum,String url );
	public Book getBookById(int id);
	public Book getBookByISBN(String iSBN);
	public List<Book> findBook(String wherejpql,Object params[]);
}
