package com.dao;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.pojo.Goods;
import com.util.DBUtil;

public class GoodsDAO {

	public List<Goods> fenye(int page, int size, String rent, String time) {
		StringBuffer sb = new StringBuffer(
				"select id,time,community,housetype,roomtype,totalarea,roomnumber,roomarea,livingnumber,toiletnumber,dicrection,totalfloor,floor,decoration,rent,paytype,owner,describe2,require2,support2,firstpic,titlee,whole from house where 1=1 ");
		// String
		// sql="select id,time,community,housetype,roomtype,totalarea,roomnumber,roomarea,livingnumber,toiletnumber,dicrection,totalfloor,floor,decoration,rent,paytype,owner,describe2,require2,support2,firstpic,titlee,whole from house limit ?, ?";
		if (rent != null && rent.trim().length() > 0) {
			if (rent.equals("up"))
				sb.append(" order by rent ");
			if (rent.equals("down"))
				sb.append(" order by rent desc ");
		}
		if (time != null && time.trim().length() > 0) {
			if (time.equals("up"))
				sb.append(" order by time ");
			if (time.equals("down"))
				sb.append(" order by time desc ");
		}
		sb.append("limit ?,?");
		List<Goods> list = DBUtil.query(Goods.class, sb.toString(), (page - 1)
				* size, size);
		return list;
	}

	public int getCount() {
		int n = 0;
		String sql = "select count(id) from house";
		n = DBUtil.uniqueQuery(sql);
		return n;
	}

	public Goods findbyid(String id) {
		String sql = "select id,ownerid,phone,time,community,housetype,roomtype,totalarea,roomnumber,roomarea,livingnumber,toiletnumber,dicrection,totalfloor,floor,decoration,rent,paytype,owner,describe2,require2,support2,firstpic,titlee,whole from house where id=?";
		List<Goods> list = DBUtil.query(Goods.class, sql,id);
		if (list.size() != 0)
			return list.get(0);
		else
			return null;
	}

	public int addgoods(String title, String ownerid, String community,
			String room, String living, String toilet, String floor,
			String totalfloor, String totalarea, String rent, String chaoxiang,
			String zhuangxiu, String owner, String phone, String describe,
			String describe2, String require, String support, String pic1,
			String pic2, String pic3, String pic4, String pic5) {
		return 0;

	}

	public int addgoods2(String title, String ownerid, String community,
			String room, String living, String toilet, String floor,
			String totalfloor, String totalarea, String rent, String chaoxiang,
			String zhuangxiu, String owner, String phone, String describe,
			String require, String support, String pic1, String pic2,
			String pic3, String pic4, String pic5, String pic6) {
		String newid = new Date().getTime() + "1";
		String sql = "insert into house(id,ownerid,titlee,time,phone,community,firstpic,totalarea,roomnumber,livingnumber,toiletnumber,dicrection,totalfloor,floor,decoration,rent,owner,describe2,require2,support2) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		String sql2 = "insert into pic(houseid,pic) values(?,?)";
		// String sql2="insert into pic(houseid,pic)";
		int ownerid2 = Integer.parseInt(ownerid);
		int totalarea2 = Integer.parseInt(totalarea);
		int room2 = Integer.parseInt(room);
		int living2 = Integer.parseInt(living);
		int toilet2 = Integer.parseInt(toilet);
		int totalfloor2 = Integer.parseInt(totalfloor);
		int floor2 = Integer.parseInt(floor);
		int rent2 = Integer.parseInt(rent);
		int n = 0;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String datestring = sdf.format(date);
		n = DBUtil.zsg(sql, newid, ownerid2, title, datestring, phone,
				community, pic1, totalarea2, room2, living2, toilet2,
				chaoxiang, totalfloor2, floor2, zhuangxiu, rent2, owner,
				describe, require, support);
		n = DBUtil.zsg(sql2, newid, pic1);
		n = DBUtil.zsg(sql2, newid, pic2);
		n = DBUtil.zsg(sql2, newid, pic3);
		n = DBUtil.zsg(sql2, newid, pic4);
		n = DBUtil.zsg(sql2, newid, pic5);
		n = DBUtil.zsg(sql2, newid, pic6);
		return n;
	}

}
