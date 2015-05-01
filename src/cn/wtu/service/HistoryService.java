package cn.wtu.service;

import java.util.List;

import cn.wtu.model.History;
import cn.wtu.model.Page;

public interface HistoryService {
	public void add(History history);
	public void del(History history);
	public void update(History history);
	public List<History> getAll();
	public Page getPage(String pagenum, String string);
	public List<History> getHistoryByUserId(String userid);
}
