package com.dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pojo.User;
import com.util.DBUtil;

public class UploadDAO {

	public int uploadname(HttpServletRequest request,
			HttpServletResponse response, String name, String id) {
		String sql="update user set username=? where userid=?";
		int n=0;
		n=DBUtil.zsg(sql, name,id);
		return n;
	}

	public User updateuser(String id) {
		String sql="select userid,username,userlogin,usermail,userphone,userpic from user where userid=?";
		List<User> list=DBUtil.query(User.class, sql, id);
		if(list.size()>0){
			return list.get(0);
		}else{
			return null;
		}
	}

	public int uploadpic(HttpServletRequest request,
			HttpServletResponse response, String pic, String id) {
		String sql="update user set userpic=? where userid=?";
		int n=0;
		n=DBUtil.zsg(sql, pic,id);
		return n;
	}

}
