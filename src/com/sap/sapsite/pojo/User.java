package com.sap.sapsite.pojo;

public class User {
	private int id;
	private String pwd;
	private String name;
	private String sex;
	private String nickname;
	private String dictum;
	private String img;
	private String p_id;
	public User() {
		super();
	}
	public User(int id, String pwd, String name, String sex, String nickname, String dictum, String img, String p_id) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.sex = sex;
		this.nickname = nickname;
		this.dictum = dictum;
		this.img = img;
		this.p_id = p_id;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getDictum() {
		return dictum;
	}
	public void setDictum(String dictum) {
		this.dictum = dictum;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getP_id() {
		return p_id;
	}
	public void setP_id(String p_id) {
		this.p_id = p_id;
	}
	
}
