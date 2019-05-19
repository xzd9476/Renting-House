package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.CollectDAO;
import com.pojo.Collect;
import com.pojo.Goods;

public class CollectServlet extends HttpServlet {
	CollectDAO collectdao=new CollectDAO();
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String method=request.getParameter("method");
		if(method.equals("findcollect"))
			dofind(request,response);
		if(method.equals("delete"))
			dodelete(request,response);
		if(method.equals("addcollect"))
			doadd(request,response);
	}

	private void doadd(HttpServletRequest request, HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String userid=request.getParameter("userid");
		String houseid=request.getParameter("houseid");
		String housetitle=new String(request.getParameter("housetitle").getBytes("iso-8859-1"),"utf-8");
		String houserent=request.getParameter("houserent");
		String firstpic=request.getParameter("firstpic");
		Collect collect=collectdao.findbyhouuser(userid,houseid);
		if(collect == null){
			int n=0;
			n=collectdao.addcollect(userid,houseid,housetitle,houserent,firstpic);
		}
		response.getWriter().print(true);
		
	}

	private void dodelete(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		String arraystring=request.getParameter("array");
		String[] array=arraystring.split(",");
		for (int i = 0; i < array.length; i++) {
			int n=0;
			n=collectdao.deletebyid(array[i]);
		}
		response.getWriter().print(true);
	}

	private void dofind(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String id=request.getParameter("userid");
		List<Collect> collectlist=collectdao.findcollect(id);//获取用户收藏的collect
		List<Goods> goodslist=new ArrayList<Goods>();//获取collect对应的house
		for (Collect collect : collectlist) {
			Goods goods=collectdao.findhouse(collect.getHouseid());
			goodslist.add(goods);
		}
		request.setAttribute("collect", collectlist);
		request.setAttribute("house", goodslist);
		
		request.getRequestDispatcher("collect.jsp").forward(request, response);
	}
}
