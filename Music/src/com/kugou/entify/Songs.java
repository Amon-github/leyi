package com.kugou.entify;
/**
 * @author Administrator
 * @version 创建时间：2018-6-8 下午12:05:26
 * 类说明
 */
public class Songs {
	int id;
	String songName;
	String songTips;
	String songTime;
	String songurl;
	int songtype;
	
	public Songs() {
		super();
	}
	public Songs(int id, String songName, String songTips, String songTime,
			String songurl, int songtype) {
		super();
		this.id = id;
		this.songName = songName;
		this.songTips = songTips;
		this.songTime = songTime;
		this.songurl = songurl;
		this.songtype = songtype;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSongName() {
		return songName;
	}
	public void setSongName(String songName) {
		this.songName = songName;
	}
	public String getSongTips() {
		return songTips;
	}
	public void setSongTips(String songTips) {
		this.songTips = songTips;
	}
	public String getSongTime() {
		return songTime;
	}
	public void setSongTime(String songTime) {
		this.songTime = songTime;
	}
	public String getSongurl() {
		return songurl;
	}
	public void setSongurl(String songurl) {
		this.songurl = songurl;
	}
	public int getSongtype() {
		return songtype;
	}
	public void setSongtype(int songtype) {
		this.songtype = songtype;
	}
	@Override
	public String toString() {
		return "Songs [id=" + id + ", songName=" + songName + ", songTips="
				+ songTips + ", songTime=" + songTime + ", songurl=" + songurl
				+ ", songtype=" + songtype + "]";
	}

}
