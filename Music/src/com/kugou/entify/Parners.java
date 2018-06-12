package com.kugou.entify;

/**
 * 
 * @author Administrator
 * ºÏ×÷»ï°éModelÀà
 */
public class Parners {
	private int p_id;
    private String p_url;
	public Parners() {
		super();
	}
	public Parners(int p_id, String p_url) {
		super();
		this.p_id = p_id;
		this.p_url = p_url;
	}
	public int getP_id() {
		return p_id;
	}
	public void setP_id(int p_id) {
		this.p_id = p_id;
	}
	public String getP_url() {
		return p_url;
	}
	public void setP_url(String p_url) {
		this.p_url = p_url;
	}
}
