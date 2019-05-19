package com.dao;

import java.util.List;

import com.pojo.User;
import com.util.DBUtil;

public class UserDAO {

	public int insert(String userlogin, String userpassword) {
		int n=0;
		String sql="insert into user(username,userlogin,userpassword) values(?,?,?)";
		n=DBUtil.zsg(sql, "”√ªß"+userlogin,userlogin,userpassword);
		return n;
	}

	public List<User> regist_check(String userlogin) {
		String sql="select *from user where userlogin=?";
		List<User> list=DBUtil.query(User.class, sql, userlogin);
		return list;
	}

	public List<User> dologin(String userlogin, String password) {
		String sql="select * from user where userlogin=? and userpassword=?";
		List<User> list=DBUtil.query(User.class, sql, userlogin,password);
		return list;
	}

	public User login(String userlogin, String password) {
		String sql="select userid,username,userlogin,usermail,userphone,userpic from user where userlogin=? and userpassword=?";
		List<User> list=DBUtil.query(User.class, sql, userlogin,password);
		if(list.size()>0){
			return list.get(0);
		}else{
			return null;
		}
	}

	public User findbyid(int ownerid) {
		String sql="select userid,username,userlogin,usermail,userphone,userpic from user where userid=?";
		List<User> list=DBUtil.query(User.class, sql, ownerid);
		if(list.size()>0)
			return list.get(0);
		else
			return null;
	}

}
