package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.jws.soap.SOAPBinding.Use;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.UserDAO;
import com.pojo.User;

public class Login extends HttpServlet {
	UserDAO userdao = new UserDAO();

	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String method = request.getParameter("method");
		if (method.equals("regist"))
			doregist(request, response);
		if (method.equals("regist_check"))
			doregist_check(request, response);
		if (method.equals("dologin"))//登录成功
			dologin(request, response);
		if (method.equals("dologin_check"))
			dologin_check(request, response);
	}

	//检查密码是否有错误
	private void dologin_check(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		String userlogin = request.getParameter("username");
		String password = request.getParameter("password");
		List<User> list = userdao.dologin(userlogin, password);
		if (list.size() != 0)//登录成功
			response.getWriter().print(true);
		else
			response.getWriter().print(false);
	}

	//登录成功
	private void dologin(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String userlogin = request.getParameter("username");
		String password = request.getParameter("password");
		User user=userdao.login(userlogin,password);
		if(user!=null){//在session里面存值
			request.getSession().setAttribute("user", user);
			request.getRequestDispatcher("index.jsp").forward(request, response);
			return;
		}
	}

	//检查是否注册了相同的账号
	private void doregist_check(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		String userlogin = request.getParameter("userlogin");
		List<User> list = userdao.regist_check(userlogin);
		if (list.size() != 0) {
			response.getWriter().print(true);
		} else {
			response.getWriter().print(false);
		}
	}

	//注册
	private void doregist(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String userlogin = request.getParameter("userlogin");
		String userpassword = request.getParameter("regist_password");
		int n = 0;
		n = userdao.insert(userlogin, userpassword);
		if (n != 0) {// 注册 成功
			request.setAttribute("userlogin", userlogin);
			request.getRequestDispatcher("loginframe.jsp").forward(request,
					response);
		}
	}
}
