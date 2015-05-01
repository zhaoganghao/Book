package cn.wtu.service;

import java.util.List;

import cn.wtu.model.Borrow;
import cn.wtu.model.Page;

public interface BorrowService {
	public void add(Borrow borrow);
	public void del(Borrow borrow);
	public void update(Borrow borrow);
	public List<Borrow> getAll();
	public Page getPage(String pagenum, String string);
	public List<Borrow> getBorrowByUserId(String userId);
	public Borrow getBorrowByUserIdISBN(String userId,String ISBN);
	public Borrow getBorrowByISBN(String ISBN);
	public Borrow getBorrowById(int id);
}
