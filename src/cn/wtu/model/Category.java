package cn.wtu.model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
@Entity
public class Category {
	@Id
	@GeneratedValue
	private int id;
	@Column(length=20)
	private String name;
	@ManyToOne(cascade={CascadeType.REFRESH},fetch=FetchType.EAGER)
	@JoinColumn(name="pid")
	private Category parent;
	@OneToMany(mappedBy="parent",cascade={CascadeType.ALL},fetch=FetchType.EAGER)
	private Set<Category> children;
	@OneToMany(mappedBy="category",fetch=FetchType.EAGER)
	private Set<Book> books;
	
	public Category() {
		super();
	}
	public Category(String name, Category parent) {
		super();
		this.name = name;
		this.parent = parent;
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
	public Category getParent() {
		return parent;
	}
	public void setParent(Category parent) {
		this.parent = parent;
	}
	public Set<Category> getChildren() {
		return children;
	}
	public void setChildren(Set<Category> children) {
		this.children = children;
	}
	public Set<Book> getBooks() {
		return books;
	}
	public void setBooks(Set<Book> books) {
		this.books = books;
	}
	
}
