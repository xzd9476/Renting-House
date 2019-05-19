package com.pojo;

import java.sql.Date;

public class Collect {
	private int collectid;
	private String houseid;
	private int userid;
	private Date time;
	private String housetitle;
	private String firstpic;
	private int houserent;
	public int getCollectid() {
		return collectid;
	}
	public void setCollectid(int collectid) {
		this.collectid = collectid;
	}
	public String getHouseid() {
		return houseid;
	}
	public void setHouseid(String houseid) {
		this.houseid = houseid;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public String getHousetitle() {
		return housetitle;
	}
	public void setHousetitle(String housetitle) {
		this.housetitle = housetitle;
	}
	public String getFirstpic() {
		return firstpic;
	}
	public void setFirstpic(String firstpic) {
		this.firstpic = firstpic;
	}
	public int getHouserent() {
		return houserent;
	}
	public void setHouserent(int houserent) {
		this.houserent = houserent;
	}

}
