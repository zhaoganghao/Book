package cn.wtu.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
@Entity
public class News {
	@Id
	@GeneratedValue
	private int id;
	private String title;
	@Lob
	private String cont;
	@Temporal(TemporalType.DATE)
	private Date date;
	private String author;
	private String source;
	
	public News() {
		super();
	}
	public News(String title, String cont, Date date, String author,
			String source) {
		super();
		this.title = title;
		this.cont = cont;
		this.date = date;
		this.author = author;
		this.source = source;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCont() {
		return cont;
	}
	public void setCont(String cont) {
		this.cont = cont;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	
}
