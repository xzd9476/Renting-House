package com.dao;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.pojo.Collect;
import com.pojo.Goods;
import com.util.DBUtil;

public class CollectDAO {

	public List findcollect(String id) {
		String sql="select collectid,houseid,userid,time,housetitle,firstpic,houserent from collect where userid = ?";
		List<Collect> list=DBUtil.query(Collect.class, sql, id);
		return list;
	}

	public Goods findhouse(String houseid) {
		String sql="select id,ownerid,phone,time,community,housetype,roomtype,totalarea,roomnumber,roomarea,livingnumber,toiletnumber,dicrection,totalfloor,floor,decoration,rent,paytype,owner,describe2,require2,support2,firstpic,titlee,whole from house where id=?";
		List<Goods> list=DBUtil.query(Goods.class, sql, houseid);
		if(list.size()!=0)
			return list.get(0);
		else
			return null;
	}

	public int deletebyid(String id) {
		String sql="delete from collect where collectid=?";
		int n=0;
		n=DBUtil.zsg(sql, id);
		return n;
	}

	public int addcollect(String userid, String houseid, String housetitle,
			String houserent, String firstpic) {
		int rent=Integer.parseInt(houserent);
		String sql="insert into collect(houseid,userid,time,housetitle,firstpic,houserent) values(?,?,?,?,?,?)";
		Date date=new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		String datestring=sdf.format(date);
		int n=0;
		n=DBUtil.zsg(sql, houseid,userid,datestring,housetitle,firstpic,houserent);
		return n;
	}

	public Collect findbyhouuser(String userid, String houseid) {
		String sql="select * from collect where userid=? and houseid=?";
		List<Collect> list= DBUtil.query(Collect.class, sql, userid,houseid);
		if(list.size()!=0)
			return list.get(0);
		else
			return null;
	}

}
