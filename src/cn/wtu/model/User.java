package cn.wtu.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
@Entity
public class User {
	@Id
	@Column(length=10)
	private String id;
	@Column(length=5)
	private String name;
	@Column(length=16)
	private String password;
	
	@Temporal(TemporalType.DATE)
	private Date date;
	@Temporal(TemporalType.DATE)
	private Date period;
	@Column(length=3)
	private String diploma;
	@Column(length=2)
	private String sex;
	private String phone;
	private String department;
	private String email;
	@Column(length=9)
	private String classs;
	@Temporal(TemporalType.DATE)
	private Date toschool;
	private int state;
	private int maxNum;
	private int maxOrder;
	private int price;
	

	

	public User(String id,String calsss,Date toschool, String name, String password, Date date,
			Date period, String diploma, String sex, String phone,
			String department, String email,int state,int maxNum,int maxOrder) {
		super();
		this.id = id;
		this.classs=classs;
		this.toschool=toschool;
		this.name = name;
		this.password = password;
		this.date = date;
		this.period = period;
		this.diploma = diploma;
		this.sex = sex;
		this.phone = phone;
		this.department = department;
		this.email = email;
		this.state=state;
		this.maxNum=maxNum;
		this.maxOrder=maxOrder;
	}
	public String getClasss() {
		return classs;
	}

	public void setClasss(String classs) {
		this.classs = classs;
	}
	public String getPhone() {
		return phone;
	}

	public int getMaxNum() {
		return maxNum;
	}

	public void setMaxNum(int maxNum) {
		this.maxNum = maxNum;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getMaxOrder() {
		return maxOrder;
	}

	public void setMaxOrder(int maxOrder) {
		this.maxOrder = maxOrder;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}


	public Date getToschool() {
		return toschool;
	}

	public void setToschool(Date toschool) {
		this.toschool = toschool;
	}

	public User() {
		super();
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public Date getPeriod() {
		return period;
	}
	public void setPeriod(Date period) {
		this.period = period;
	}
	public String getDiploma() {
		return diploma;
	}
	public void setDiploma(String diploma) {
		this.diploma = diploma;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	
}
