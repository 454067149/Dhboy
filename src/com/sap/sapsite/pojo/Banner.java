package com.sap.sapsite.pojo;

public class Banner {
	private Integer id;
	private String img;
	private String title;
	private String p;
	private String url;
	public Banner() {
		super();
	}
	public Banner(Integer id, String img, String title, String p, String url) {
		super();
		this.id = id;
		this.img = img;
		this.title = title;
		this.p = p;
		this.url = url;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
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
	public String getP() {
		return p;
	}
	public void setP(String p) {
		this.p = p;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	
}
