package com.dao;

import java.util.List;

import com.pojo.pic;
import com.util.DBUtil;

public class PicDAO {

	public List getpic(String id) {
		String sql="select picid,houseid,pic from pic where houseid = ? and pic is not null";
		List<pic> list=DBUtil.query(pic.class, sql, id);
		return list;
	}

}
