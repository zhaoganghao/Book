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
@Entity
public class History {
	@Id
	@GeneratedValue
	private int id;
	@OneToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="book_id")
	private Book book;
	@OneToOne
	@JoinColumn(name="user_id")
	private User user;
	@Temporal(TemporalType.DATE)
	private Date borrowTime;
	@Temporal(TemporalType.DATE)
	private Date returnTime;
	
	public Date getBorrowTime() {
		return borrowTime;
	}
	public void setBorrowTime(Date borrowTime) {
		this.borrowTime = borrowTime;
	}
	public History() {
		super();
	}
	public History(Book book, User user, Date bookTime, Date returnTime) {
		super();
		this.book = book;
		this.user = user;
		this.borrowTime = bookTime;
		this.returnTime = returnTime;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Book getBook() {
		return book;
	}
	public void setBook(Book book) {
		this.book = book;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Date getBookTime() {
		return borrowTime;
	}
	public void setBookTime(Date bookTime) {
		this.borrowTime = bookTime;
	}
	public Date getReturnTime() {
		return returnTime;
	}
	public void setReturnTime(Date returnTime) {
		this.returnTime = returnTime;
	}
	
}
