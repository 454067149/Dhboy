package com.sap.sapsite.pojo;

public class Article {
	private int id;
	private String img;
	private String title;
	private String name;
	private String paper;
	private String editor1;
	private int c_id;
	private int u_id;
	private String date;
	public Article() {
		super();
	}
	public Article(int id, String img, String title, String name, String paper, String editor1, int c_id, int u_id,
			String date) {
		super();
		this.id = id;
		this.img = img;
		this.title = title;
		this.name = name;
		this.paper = paper;
		this.editor1 = editor1;
		this.c_id = c_id;
		this.u_id = u_id;
		this.date = date;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPaper() {
		return paper;
	}
	public void setPaper(String paper) {
		this.paper = paper;
	}
	public String getEditor1() {
		return editor1;
	}
	public void setEditor1(String editor1) {
		this.editor1 = editor1;
	}
	public int getC_id() {
		return c_id;
	}
	public void setC_id(int c_id) {
		this.c_id = c_id;
	}
	public int getU_id() {
		return u_id;
	}
	public void setU_id(int u_id) {
		this.u_id = u_id;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
}
