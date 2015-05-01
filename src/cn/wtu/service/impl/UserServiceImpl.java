package cn.wtu.service.impl;

import java.util.List;

import org.hibernate.Session;

import cn.wtu.model.User;
import cn.wtu.model.Page;
import cn.wtu.model.User;
import cn.wtu.service.UserService;


public class  UserServiceImpl extends AbstractService implements UserService {

	public void add(User user) {
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		session.save(user);
		session.getTransaction().commit();
	}

	public void del(User user) {
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		session.delete(user);
		session.getTransaction().commit();
	}

	public void update(User user) {
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		session.update(user);
		session.getTransaction().commit();
	}

	public List<User> getAll() {
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		List<User> users = session.createQuery("from User").list();
		session.getTransaction().commit();
		return users;
	}

	public Page getPage(String pagenum, String url) {
		int totalrecord = this.getTotalrecord();

		if (pagenum == null) {
			Page page = new Page(totalrecord, 1);
			List list = this.getPageUser(page.getStartindex(),
					page.getPagesize());
			page.setList(list);
			page.setUrl(url);
			return page;
		} else {
			Page page = new Page(totalrecord, Integer.parseInt(pagenum));
			List list = this.getPageUser(page.getStartindex(),
					page.getPagesize());
			page.setList(list);
			page.setUrl(url);
			return page;
		}
	}
	private List<User> getPageUser(int startindex,int pagesize){
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		 List<User> Users=session.createQuery("from User ").setFirstResult(startindex).setMaxResults(pagesize).list();
		 session.getTransaction().commit();
		return Users;
	}
	private int getTotalrecord(){
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		int totalrecord=((Long)session.createQuery("select count(*) from User").uniqueResult()).intValue();
		session.getTransaction().commit();
		return totalrecord;
	}

	public User getUserById(String  id) {
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		User user=(User) session.get(User.class, id);
		 session.getTransaction().commit();
		return user;
	}


}
