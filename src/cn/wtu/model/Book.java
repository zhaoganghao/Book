package cn.wtu.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Book {
	@Id
	@GeneratedValue
	private int id;
	@Column(length=20)
	private String name;
	@Lob
	private String descr;
	@Column(length=30)
	private String ISBN;
	@Column(length=20)
	private String author;
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="category_id")
	private Category category;
	@Temporal(TemporalType.DATE)
	private Date date;
	public Book(int id, String name, String descr, String iSBN,
			String author, Category category, Date date) {
		super();
		this.id = id;
		this.name = name;
		this.descr = descr;
		this.ISBN = iSBN;
		this.author = author;
		this.category = category;
		this.date = date;
	}
	public Book() {
		super();
	}
	public Book(String name, String descr, String iSBN, String author,
			Category category, Date date) {
		super();
		this.name = name;
		this.descr = descr;
		this.ISBN = iSBN;
		this.author = author;
		this.category = category;
		this.date = date;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescr() {
		return descr;
	}
	public void setDescr(String descr) {
		this.descr = descr;
	}
	public String getISBN() {
		return ISBN;
	}
	public void setISBN(String iSBN) {
		ISBN = iSBN;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}

	
}
