package cn.wtu.service.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import cn.wtu.model.Book;
import cn.wtu.model.Page;
import cn.wtu.service.BookService;

public class BookServiceImpl extends AbstractService implements BookService {

	public void add(Book book) {
		Session session = this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		session.save(book);
		session.getTransaction().commit();
	}

	public void del(Book book) {
		Session session = this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		session.delete(book);
		session.getTransaction().commit();
	}

	public void update(Book book) {
		Session session = this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		session.update(book);
		session.getTransaction().commit();
	}

	public List<Book> getAll() {
		Session session = this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		List<Book> books = session.createQuery("from Book").list();
		session.getTransaction().commit();
		return books;
	}

	public Page getPage(String pagenum, String url) {
		int totalrecord = this.getTotalrecord();

		if (pagenum == null) {
			Page page = new Page(totalrecord, 1);
			List list = this.getPageBook(page.getStartindex(),
					page.getPagesize());
			page.setList(list);
			page.setUrl(url);
			return page;
		} else {
			Page page = new Page(totalrecord, Integer.parseInt(pagenum));
			List list = this.getPageBook(page.getStartindex(),
					page.getPagesize());
			page.setList(list);
			page.setUrl(url);
			return page;
		}
	}
	private List<Book> getPageBook(int startindex,int pagesize){
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		 List<Book> books=session.createQuery("from Book ").setFirstResult(startindex).setMaxResults(pagesize).list();
		 session.getTransaction().commit();
		return books;
	}
	private int getTotalrecord(){
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		int totalrecord=((Long)session.createQuery("select count(*) from Book").uniqueResult()).intValue();
		session.getTransaction().commit();
		return totalrecord;
	}

	public Book getBookById(int id) {
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		Book book=(Book) session.get(Book.class, id);
		session.getTransaction().commit();
		return book;
	}

	public Book getBookByISBN(String iSBN) {
		Session session = this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		Book book =  (Book) session.createQuery("from Book o where o.ISBN='"+iSBN+"'").uniqueResult();
		session.getTransaction().commit();
		return book;
	}

	public List<Book> findBook(String wherejpql, Object[] params) {
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		Query query =session.createQuery("from Book o "+(wherejpql==null || "".equals(wherejpql.trim())? "": "where "+ wherejpql));
			setQueryParams(query, params);
		List<Book> books=query.list();
		session.getTransaction().commit();
		return books;
	}
private void setQueryParams(Query query, Object[] queryParams) {
		
		if(queryParams!=null && queryParams.length>0){
			for(int i=0; i<queryParams.length; i++){
				query.setParameter(i, queryParams[i]);
			}
		}
		
	}
}
