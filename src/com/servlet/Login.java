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
		if (method.equals("dologin"))//��¼�ɹ�
			dologin(request, response);
		if (method.equals("dologin_check"))
			dologin_check(request, response);
	}

	//��������Ƿ��д���
	private void dologin_check(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		String userlogin = request.getParameter("username");
		String password = request.getParameter("password");
		List<User> list = userdao.dologin(userlogin, password);
		if (list.size() != 0)//��¼�ɹ�
			response.getWriter().print(true);
		else
			response.getWriter().print(false);
	}

	//��¼�ɹ�
	private void dologin(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String userlogin = request.getParameter("username");
		String password = request.getParameter("password");
		User user=userdao.login(userlogin,password);
		if(user!=null){//��session�����ֵ
			request.getSession().setAttribute("user", user);
			request.getRequestDispatcher("index.jsp").forward(request, response);
			return;
		}
	}

	//����Ƿ�ע������ͬ���˺�
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

	//ע��
	private void doregist(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String userlogin = request.getParameter("userlogin");
		String userpassword = request.getParameter("regist_password");
		int n = 0;
		n = userdao.insert(userlogin, userpassword);
		if (n != 0) {// ע�� �ɹ�
			request.setAttribute("userlogin", userlogin);
			request.getRequestDispatcher("loginframe.jsp").forward(request,
					response);
		}
	}
}
