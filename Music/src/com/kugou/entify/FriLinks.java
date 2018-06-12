package com.kugou.entify;

public class FriLinks {
	int id;
	String url;
	String fCon;
	public FriLinks() {
		super();
	}
	public FriLinks(int id, String url, String fCon) {
		super();
		this.id = id;
		this.url = url;
		this.fCon = fCon;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getfCon() {
		return fCon;
	}
	public void setfCon(String fCon) {
		this.fCon = fCon;
	}

}
