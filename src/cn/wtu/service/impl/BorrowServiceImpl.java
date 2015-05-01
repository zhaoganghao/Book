package cn.wtu.service.impl;

import java.util.List;

import org.hibernate.Session;

import cn.wtu.model.Borrow;
import cn.wtu.model.Page;
import cn.wtu.service.BorrowService;


public class  BorrowServiceImpl extends AbstractService implements BorrowService {

	public void add(Borrow borrow) {
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		session.save(borrow);
		session.getTransaction().commit();
	}

	public void del(Borrow borrow) {
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		session.delete(borrow);
		session.getTransaction().commit();
	}

	public void update(Borrow borrow) {
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		session.update(borrow);
		session.getTransaction().commit();
	}

	public List<Borrow> getAll() {
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		List<Borrow> borrows = session.createQuery("from Borrow").list();
		session.getTransaction().commit();
		return borrows;
	}
	public Page getPage(String pagenum, String url) {
		int totalrecord = this.getTotalrecord();

		if (pagenum == null) {
			Page page = new Page(totalrecord, 1);
			List list = this.getPageBorrow(page.getStartindex(),
					page.getPagesize());
			page.setList(list);
			page.setUrl(url);
			return page;
		} else {
			Page page = new Page(totalrecord, Integer.parseInt(pagenum));
			List list = this.getPageBorrow(page.getStartindex(),
					page.getPagesize());
			page.setList(list);
			page.setUrl(url);
			return page;
		}
	}
	private List<Borrow> getPageBorrow(int startindex,int pagesize){
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		 List<Borrow> Borrows=session.createQuery("from Borrow ").setFirstResult(startindex).setMaxResults(pagesize).list();
		 session.getTransaction().commit();
		return Borrows;
	}
	private int getTotalrecord(){
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		int totalrecord=((Long)session.createQuery("select count(*) from Borrow").uniqueResult()).intValue();
		session.getTransaction().commit();
		return totalrecord;
	}

	public List<Borrow> getBorrowByUserId(String userId) {
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		List<Borrow> borrows= (List<Borrow>) session.createQuery("from Borrow o where o.user.id="+userId).list();
		session.getTransaction().commit();
		return borrows;
	}

	public Borrow getBorrowByUserIdISBN(String userId, String ISBN) {
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		Borrow borrow= (Borrow) session.createQuery("from Borrow o where" +
				" o.user.id="+userId+" and o.book.ISBN="+ISBN).uniqueResult();
		session.getTransaction().commit();
		return borrow;
	}

	public Borrow getBorrowById(int id) {
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		Borrow borrow= (Borrow) session.get(Borrow.class, id);
		session.getTransaction().commit();
		return borrow;
	}

	public Borrow getBorrowByISBN(String ISBN) {
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		Borrow borrow= (Borrow) session.createQuery("from Borrow o where o.book.ISBN='"+ISBN+"'").uniqueResult();
		session.getTransaction().commit();
		return borrow;
	}
}
