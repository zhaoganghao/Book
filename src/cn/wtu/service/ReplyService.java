package cn.wtu.service;

import java.util.List;

import cn.wtu.model.Reply;


public interface ReplyService {
	public void add(Reply reply);
	public void del(Reply reply);
	public void update(Reply reply);
	public List<Reply> getAll();
}
