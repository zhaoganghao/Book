package cn.wtu.service.impl;

import java.util.List;

import org.hibernate.Session;

import cn.wtu.model.History;
import cn.wtu.model.Page;
import cn.wtu.model.History;
import cn.wtu.service.HistoryService;


public class  HistoryServiceImpl extends AbstractService implements HistoryService {

	public void add(History history) {
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		session.save(history);
		session.getTransaction().commit();
	}

	public void del(History history) {
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		session.delete(history);
		session.getTransaction().commit();
	}

	public void update(History history) {
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		session.update(history);
		session.getTransaction().commit();
	}

	public List<History> getAll() {
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		List<History> historys = session.createQuery("from History").list();
		session.getTransaction().commit();
		return historys;
	}
	public Page getPage(String pagenum, String url) {
		int totalrecord = this.getTotalrecord();

		if (pagenum == null) {
			Page page = new Page(totalrecord, 1);
			List list = this.getPageHistory(page.getStartindex(),
					page.getPagesize());
			page.setList(list);
			page.setUrl(url);
			return page;
		} else {
			Page page = new Page(totalrecord, Integer.parseInt(pagenum));
			List list = this.getPageHistory(page.getStartindex(),
					page.getPagesize());
			page.setList(list);
			page.setUrl(url);
			return page;
		}
	}
	private List<History> getPageHistory(int startindex,int pagesize){
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		 List<History> historys=session.createQuery("from History ").setFirstResult(startindex).setMaxResults(pagesize).list();
		 session.getTransaction().commit();
		return historys;
	}
	private int getTotalrecord(){
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		int totalrecord=((Long)session.createQuery("select count(*) from History").uniqueResult()).intValue();
		session.getTransaction().commit();
		return totalrecord;
	}

	public List<History> getHistoryByUserId(String userid) {
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		List<History> historys=session.createQuery(" from History o where o.user.id='"+userid+"'").list();
		session.getTransaction().commit();
		return historys;
	}

}
