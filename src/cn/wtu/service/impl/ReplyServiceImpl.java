package cn.wtu.service.impl;

import java.util.List;

import org.hibernate.Session;

import cn.wtu.model.Reply;
import cn.wtu.service.ReplyService;


public class  ReplyServiceImpl extends AbstractService implements ReplyService {

	public void add(Reply reply) {
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		session.save(reply);
		session.getTransaction().commit();
	}

	public void del(Reply reply) {
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		session.delete(reply);
		session.getTransaction().commit();
	}

	public void update(Reply reply) {
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		session.update(reply);
		session.getTransaction().commit();
	}

	public List<Reply> getAll() {
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		List<Reply> replys = session.createQuery("from Reply").list();
		session.getTransaction().commit();
		return replys;
	}

}
