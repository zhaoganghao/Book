package cn.wtu.service;

import java.util.List;

import cn.wtu.model.News;
import cn.wtu.model.Page;

public interface NewsService {
	public void add(News news);
	public void del(News news);
	public void update(News news);
	public List<News> getAll();
	public Page getPage(String pagenum, String string);
	public News getNewsById(int id);
}
