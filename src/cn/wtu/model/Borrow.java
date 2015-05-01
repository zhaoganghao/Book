package cn.wtu.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;
@Entity
public class Borrow {
	@Id
	@GeneratedValue
	private int id;
	@OneToOne
	@JoinColumn(name="user_id")
	private User user;
	@OneToOne
	@JoinColumn(name="book_id")
	private Book book;
	@Temporal(TemporalType.DATE)
	private Date borrowTime;
	@Temporal(TemporalType.DATE)
	private Date shouldTime;
	private int state;//续借标识
	@Transient
	private long size;
	
	public long getSize() {
		this.size=(this.shouldTime.getTime()-new Date().getTime())/(3600*24*1000);
		return size;
		
	}
	public void setSize(long size) {
		this.size = size;
	}
	public Borrow() {
		super();
	}
	public Borrow(User user, Book book, Date borrowTime, Date shouldTime,
			int state) {
		super();
		this.user = user;
		this.book = book;
		this.borrowTime = borrowTime;
		this.shouldTime = shouldTime;
		this.state = state;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Book getBook() {
		return book;
	}
	public void setBook(Book book) {
		this.book = book;
	}
	public Date getBorrowTime() {
		return borrowTime;
	}
	public void setBorrowTime(Date borrowTime) {
		this.borrowTime = borrowTime;
	}
	public Date getShouldTime() {
		return shouldTime;
	}
	public void setShouldTime(Date shouldTime) {
		this.shouldTime = shouldTime;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	
}
