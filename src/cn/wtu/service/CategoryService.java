package cn.wtu.service;

import java.util.List;

import cn.wtu.model.Category;

public interface CategoryService {
	public void add(Category category);
	public void del(Category category);
	public void update(Category category);
	public List<Category> getAll();
	public List<Category> getCategory(int pid);
	public Category getCategoryById(int id);
}
