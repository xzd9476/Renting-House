package com.pojo;

import java.sql.Date;

public class Goods {
private String id;
private int ownerid;
private Date time;
private String phone;
private String community;//小区
private String housetype;//公寓 普通住宅
private String roomtype;//主卧次卧
private  int totalarea;
private int roomarea;
private int roomnumber;
private int livingnumber;
private int toiletnumber;
private String dicrection;//朝向
private int totalfloor;
private int floor;
private String decoration;//毛胚 简单装修 中等装修 精装修 豪华装修  
private int rent;
private String paytype;//押一付一 押一付三 半年付 年付
private String owner;
private String describe2;
private String require2;
private String support2;
private String firstpic;
private String titlee;
private String whole;
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public int getOwnerid() {
	return ownerid;
}
public void setOwnerid(int ownerid) {
	this.ownerid = ownerid;
}
public Date getTime() {
	return time;
}
public void setTime(Date time) {
	this.time = time;
}
public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;
}
public String getCommunity() {
	return community;
}
public void setCommunity(String community) {
	this.community = community;
}
public String getHousetype() {
	return housetype;
}
public void setHousetype(String housetype) {
	this.housetype = housetype;
}
public String getRoomtype() {
	return roomtype;
}
public void setRoomtype(String roomtype) {
	this.roomtype = roomtype;
}
public int getTotalarea() {
	return totalarea;
}
public void setTotalarea(int totalarea) {
	this.totalarea = totalarea;
}
public int getRoomarea() {
	return roomarea;
}
public void setRoomarea(int roomarea) {
	this.roomarea = roomarea;
}
public int getRoomnumber() {
	return roomnumber;
}
public void setRoomnumber(int roomnumber) {
	this.roomnumber = roomnumber;
}
public int getLivingnumber() {
	return livingnumber;
}
public void setLivingnumber(int livingnumber) {
	this.livingnumber = livingnumber;
}
public int getToiletnumber() {
	return toiletnumber;
}
public void setToiletnumber(int toiletnumber) {
	this.toiletnumber = toiletnumber;
}
public String getDicrection() {
	return dicrection;
}
public void setDicrection(String dicrection) {
	this.dicrection = dicrection;
}
public int getTotalfloor() {
	return totalfloor;
}
public void setTotalfloor(int totalfloor) {
	this.totalfloor = totalfloor;
}
public int getFloor() {
	return floor;
}
public void setFloor(int floor) {
	this.floor = floor;
}
public String getDecoration() {
	return decoration;
}
public void setDecoration(String decoration) {
	this.decoration = decoration;
}
public int getRent() {
	return rent;
}
public void setRent(int rent) {
	this.rent = rent;
}
public String getPaytype() {
	return paytype;
}
public void setPaytype(String paytype) {
	this.paytype = paytype;
}
public String getOwner() {
	return owner;
}
public void setOwner(String owner) {
	this.owner = owner;
}
public String getDescribe2() {
	return describe2;
}
public void setDescribe2(String describe2) {
	this.describe2 = describe2;
}
public String getRequire2() {
	return require2;
}
public void setRequire2(String require2) {
	this.require2 = require2;
}
public String getSupport2() {
	return support2;
}
public void setSupport2(String support2) {
	this.support2 = support2;
}
public String getFirstpic() {
	return firstpic;
}
public void setFirstpic(String firstpic) {
	this.firstpic = firstpic;
}
public String getTitlee() {
	return titlee;
}
public void setTitlee(String titlee) {
	this.titlee = titlee;
}
public String getWhole() {
	return whole;
}
public void setWhole(String whole) {
	this.whole = whole;
}

}