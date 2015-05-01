package cn.wtu.service.impl;

import java.util.List;

import org.hibernate.Session;

import cn.wtu.model.Message;
import cn.wtu.model.Page;
import cn.wtu.model.Message;
import cn.wtu.service.MessageService;


public class  MessageServiceImpl extends AbstractService implements MessageService {

	public void add(Message message) {
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		session.save(message);
		session.getTransaction().commit();
	}

	public void del(Message message) {
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		session.delete(message);
		session.getTransaction().commit();
	}

	public void update(Message message) {
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		session.update(message);
		session.getTransaction().commit();
	}

	public List<Message> getAll() {
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		List<Message> messages = session.createQuery("from Message").list();
		session.getTransaction().commit();
		return messages;
	}

	public Page getPage(String pagenum, String url) {
		int totalrecord = this.getTotalrecord();

		if (pagenum == null) {
			Page page = new Page(totalrecord, 1);
			List list = this.getPageMessage(page.getStartindex(),
					page.getPagesize());
			page.setList(list);
			page.setUrl(url);
			return page;
		} else {
			Page page = new Page(totalrecord, Integer.parseInt(pagenum));
			List list = this.getPageMessage(page.getStartindex(),
					page.getPagesize());
			page.setList(list);
			page.setUrl(url);
			return page;
		}
	}
	private List<Message> getPageMessage(int startindex,int pagesize){
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		 List<Message> Messages=session.createQuery("from Message ").setFirstResult(startindex).setMaxResults(pagesize).list();
		 session.getTransaction().commit();
		return Messages;
	}
	private int getTotalrecord(){
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		int totalrecord=((Long)session.createQuery("select count(*) from Message").uniqueResult()).intValue();
		session.getTransaction().commit();
		return totalrecord;
	}

	public Message getMessageById(int  id) {
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		Message Message=(Message) session.get(Message.class, id);
		 session.getTransaction().commit();
		return Message;
	}

	public List<Message> getAllNoReply() {
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		List<Message> messages = session.createQuery("from Message o where o.reply is not empty").list();
		session.getTransaction().commit();
		return messages;
	}


}
