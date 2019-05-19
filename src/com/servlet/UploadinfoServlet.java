package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.UploadDAO;
import com.pojo.User;
import com.util.Upload;

public class UploadinfoServlet extends HttpServlet {
	UploadDAO uploaddao=new UploadDAO();
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String method=request.getParameter("method");
		if(method.equals("uploadname")){
			douploadname(request,response);
		}
		if(method.equals("uploadpic")){
			douploadpic(request,response);
		}
		
	}

	

	private void douploadpic(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String path = request.getSession().getServletContext()
				.getRealPath("image");
		Map<String , String> map = Upload.upload(request, 100*1024*1024, path);
		String pic = map.get("picfile");
		int n=0;
		String id=request.getParameter("userid");
		n=uploaddao.uploadpic(request, response, pic, id);
		User user=uploaddao.updateuser(id);
		request.getSession().setAttribute("user", user);
		response.sendRedirect("userinfo.jsp");
		//request.getRequestDispatcher("userinfo.jsp").forward(request, response);
	}



	private void douploadname(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		String name=new String(request.getParameter("nametext").getBytes("iso-8859-1"),"utf-8");
		String id=request.getParameter("userid");
		int n=0;
		n=uploaddao.uploadname(request,response,name,id);
		User user=uploaddao.updateuser(id);
		request.getSession().setAttribute("user", user);
		if (n!=0){//ÐÞ¸Ä³É¹¦
			response.getWriter().print(true);
		}else{
			response.getWriter().print(false);
		}
	}
}
