package cn.wtu.service.impl;

import java.util.List;

import org.hibernate.Session;

import cn.wtu.model.Category;
import cn.wtu.service.CategoryService;


public class  CategoryServiceImpl extends AbstractService implements CategoryService {

	public void add(Category category) {
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		session.save(category);
		session.getTransaction().commit();
	}

	public void del(Category category) {
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		session.delete(category);
		session.getTransaction().commit();
	}

	public void update(Category category) {
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		session.update(category);
		session.getTransaction().commit();
	}

	public List<Category> getAll() {
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		List<Category> categorys = session.createQuery("from Category").list();
		session.getTransaction().commit();
		return categorys;
	}

	public List<Category> getCategory(int pid) {
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		List<Category> categorys =null;
		if(pid==0){
			categorys= session.createQuery("from Category o where o.parent is null ").list();
		}else{
			categorys= session.createQuery("from Category o where o.parent.id =  "+pid).list();
		}
		session.getTransaction().commit();
		return categorys;
	}

	public Category getCategoryById(int id) {
		Session session =this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		Category category=(Category) session.get(Category.class, id);
		session.getTransaction().commit();
		return category;
	}

}
