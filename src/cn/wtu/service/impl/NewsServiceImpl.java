package cn.wtu.service.impl;

import java.util.List;

import org.hibernate.Session;

import cn.wtu.model.News;
import cn.wtu.model.Page;
import cn.wtu.model.News;
import cn.wtu.service.NewsService;


public class  NewsServiceImpl extends AbstractService implements NewsService {

	public void add(News news) {
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		session.save(news);
		session.getTransaction().commit();
	}

	public void del(News news) {
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		session.delete(news);
		session.getTransaction().commit();
	}

	public void update(News news) {
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		session.update(news);
		session.getTransaction().commit();
	}

	public List<News> getAll() {
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		List<News> news = session.createQuery("from News").list();
		session.getTransaction().commit();
		return news;
	}
	public Page getPage(String pagenum, String url) {
		int totalrecord = this.getTotalrecord();

		if (pagenum == null) {
			Page page = new Page(totalrecord, 1);
			List list = this.getPageNews(page.getStartindex(),
					page.getPagesize());
			page.setList(list);
			page.setUrl(url);
			return page;
		} else {
			Page page = new Page(totalrecord, Integer.parseInt(pagenum));
			List list = this.getPageNews(page.getStartindex(),
					page.getPagesize());
			page.setList(list);
			page.setUrl(url);
			return page;
		}
	}
	private List<News> getPageNews(int startindex,int pagesize){
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		 List<News> Newss=session.createQuery("from News ").setFirstResult(startindex).setMaxResults(pagesize).list();
		 session.getTransaction().commit();
		return Newss;
	}
	private int getTotalrecord(){
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		int totalrecord=((Long)session.createQuery("select count(*) from News").uniqueResult()).intValue();
		session.getTransaction().commit();
		return totalrecord;
	}

	public News getNewsById(int id) {
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		News news=(News) session.get(News.class, id);
		session.getTransaction().commit();
		return news;
	}
}
