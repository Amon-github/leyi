package com.kugou.entify;

import java.util.Date;

/**
 * 
 * @author Administrator 
 * @version 创建时间：2018-6-5 下午6:54:10
 * User
 */

public class User {
	public User(int id, String phone, String pwd, String nick, String sex,
			Date birth, String area, String sign) {
		super();
		this.id = id;
		this.phone = phone;
		this.pwd = pwd;
		this.nick = nick;
		this.sex = sex;
		this.birth = birth;
		this.area = area;
		this.sign = sign;
	}
	int id;
	String phone;
	String pwd;
	String nick;
	String sex;
	Date birth;		//生日
	String area;	//地址
	String sign;	//个性签名
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getSign() {
		return sign;
	}
	public void setSign(String sign) {
		this.sign = sign;
	}
	public User(String phone, String pwd) {
		super();
		this.phone = phone;
		this.pwd = pwd;
	}
	public User() {
		super();
	}
	public User(int id, String phone, String nick) {
		super();
		this.id = id;
		this.phone = phone;
		this.nick = nick;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", phone=" + phone + ", pwd=" + pwd
				+ ", nick=" + nick + ", sex=" + sex + ", birth=" + birth
				+ ", area=" + area + ", sign=" + sign + "]";
	}
	
	
	
	
	
	
	

}
