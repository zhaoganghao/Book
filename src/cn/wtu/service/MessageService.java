package cn.wtu.service;

import java.util.List;

import cn.wtu.model.Message;
import cn.wtu.model.Page;

public interface MessageService {
	public void add(Message message);
	public void del(Message  message);
	public void update(Message message);
	public List<Message> getAll();
	public List<Message> getAllNoReply();
	public Page getPage(String pagenum, String string);
	public Message getMessageById(int parseInt);
}
