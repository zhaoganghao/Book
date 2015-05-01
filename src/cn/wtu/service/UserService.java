package cn.wtu.service;

import java.util.List;

import cn.wtu.model.Page;
import cn.wtu.model.User;


public interface UserService {
	public void add(User user);
	public void del(User user);
	public void update(User user);
	public List<User> getAll();
	public User getUserById(String id);
	public Page getPage(String pagenum, String string);
}
