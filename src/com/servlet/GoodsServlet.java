package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.Cookiedao;
import com.dao.EquipmentDAO;
import com.dao.GoodsDAO;
import com.dao.PicDAO;
import com.dao.UserDAO;
import com.pojo.Equipment;
import com.pojo.Goods;
import com.pojo.User;
import com.util.DBUtil;
import com.util.Upload;

public class GoodsServlet extends HttpServlet {
	GoodsDAO goodsdao = new GoodsDAO();
	EquipmentDAO equipmentdao = new EquipmentDAO();
	PicDAO picdao = new PicDAO();
	UserDAO userdao = new UserDAO();

	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String method = request.getParameter("method");
		if (method.equals("fenye"))
			dofenye(request, response);
		if (method.equals("findbyid"))
			dofindbyid(request, response);
		if (method.equals("addgoods"))
			doaddgoods(request, response);
	}

	private void doaddgoods(HttpServletRequest request,
			HttpServletResponse response) {
		String path = request.getSession().getServletContext()
				.getRealPath("image");
		Map<String, String> map = Upload.upload(request, 100 * 1024 * 1024,
				path);
		String title = map.get("title");
		String userid=request.getParameter("userid");
		String community = map.get("community");
		String room = map.get("room");
		String living = map.get("living");
		String toilet = map.get("toilet");
		String floor = map.get("floor");
		String totalfloor = map.get("totalfloor");
		String totalarea = map.get("totalarea");
		String rent = map.get("rent");
		String chaoxiang = map.get("chaoxiang");
		String zhuangxiu = map.get("zhuangxiu");
		String owner = map.get("owner");
		String phone = map.get("phone");
		String describe = map.get("describe");
		String require = map.get("require");
		String support = map.get("support");
		String pic1 = map.get("file0");
		String pic2 = map.get("file1");
		String pic3 = map.get("file2");
		String pic4 = map.get("file3");
		String pic5 = map.get("file4");
		String pic6 = map.get("file5");
		int n = 0;
		n = goodsdao.addgoods2(title, userid,community, room, living, toilet, floor,
				totalfloor, totalarea, rent, chaoxiang, zhuangxiu, owner,
				phone, describe, require, support, pic1, pic2, pic3, pic4,
				pic5, pic6);

	}

	private void dofindbyid(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("houseid");
		Cookie c=Cookiedao.getcookiebyname("ids", request.getCookies());
		String ids="";
		if(c==null){
			ids=id;
		}else{//��cookie��Ϊ��,�����ж�ids���Ƿ��Ѿ�����id
			ids=c.getValue();
			String[] arr=ids.split("-");
			List<String> aslist=Arrays.asList(arr);
			//List<String> list=new ArrayList<String>();
			LinkedList<String> list=new LinkedList<String>(aslist);
			if(list.contains(id)){  //��ids�а���id  ��id�Ƴ��ŵ���ǰ��
				list.remove(id);
				list.addFirst(id);
			}else{ //��ids�ֲ�����id  �����жϳ����Ƿ����2
				if(list.size()>3){
				 //����>=3 �Ƴ����һ��������ǰ�ķ�����ǰ��
				  list.removeLast();
				  list.addFirst(id);
				}else{
				//����<3����ǰ������ǰ��
				  list.addFirst(id);
				}
			}
			ids="";
		  //��Listת���ַ���
		  for(String s :list) {
		  ids+=(s+"-");
		  }
		  ids=ids.substring(0, ids.length());
		}
		c=new Cookie("ids", ids);
		c.setPath(request.getContextPath());
		c.setMaxAge(3600);
		response.addCookie(c);//c.getvalue():1-2-3- ��""
		String ids2=c.getValue();
		String[] arr2=ids2.split("-");
		List<Goods> historylist=new ArrayList<Goods>();
		for (int i = 0; i < arr2.length; i++) {
			Goods historygoods=goodsdao.findbyid(arr2[i]);
			historylist.add(historygoods);
		}
		request.getSession().setAttribute("history", historylist);
		
		Equipment equipment = equipmentdao.getequipment(id);// һ������
		List piclist = picdao.getpic(id);// ��������
		Goods houselist = goodsdao.findbyid(id);// һ������
		User user = userdao.findbyid(houselist.getOwnerid());
		request.setAttribute("owner", user);
		request.setAttribute("equipment", equipment);
		request.setAttribute("pic", piclist);
		request.setAttribute("house", houselist);
		request.getRequestDispatcher("houseinfo.jsp")
				.forward(request, response);
	}

	private void dofenye(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		int page = 1;
		int size = 6;

		// �ڶ���ҳ
		String pagestring = request.getParameter("page");
		if (pagestring != null && pagestring.trim().length() > 0) {
			page = Integer.parseInt(pagestring);
		}

		// һҳ��ʾ������Ʒ
		String sizestring = request.getParameter("size");
		if (sizestring != null && pagestring.trim().length() > 0) {
			size = Integer.parseInt(sizestring);
		}

		if (page < 1) {
			page = 1;
		}

		// �õ���ҳ��
		int count = goodsdao.getCount();
		int pagecount = count % size == 0 ? count / size : count / size + 1;
		if (page > pagecount) {
			page = pagecount;
		}

		String rent = request.getParameter("rent");
		String time = request.getParameter("time");

		List<Goods> list = goodsdao.fenye(page, size, rent, time);

		Map map = new HashMap();
		map.put("rent", rent);
		map.put("time", time);
		map.put("list", list);// ����һ����house����
		map.put("size", size);// ����һҳ��ʾ���ٿ�
		map.put("page", page);// ���浱ǰҳ
		map.put("count", count);// ������ҳ��
		map.put("pagecount", pagecount);
		request.setAttribute("map", map);
		request.getRequestDispatcher("show.jsp").forward(request, response);
	}
}
