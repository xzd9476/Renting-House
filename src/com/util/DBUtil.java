package com.util;

import java.lang.reflect.Field;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

public class DBUtil {
	
public static Vector<Connection> connectionpool=new Vector<Connection>();

static{
	try {
		Class.forName("com.mysql.jdbc.Driver");
		for (int i = 0; i < 10; i++) {
			Connection connection = DriverManager.getConnection(
					"jdbc:mysql://127.0.0.1/anjuke", "root", "sasa");
			connectionpool.add(connection);
		}
		} catch (Exception e) {
		// TODO: handle exception
	}
}

public static Connection getconnection(){
	Connection connection=connectionpool.get(0);
	connectionpool.remove(0);
	return connection;
}

public static void releaseconnection(Connection connection){
	connectionpool.add(connection);
}

public static List query(Class c,String sql,Object... p){
	List list = new ArrayList();
	Connection connection=getconnection();
	ResultSet rs=null;
	try {
		PreparedStatement ps = connection.prepareStatement(sql);
		for (int i = 0; i < p.length; i++) {
			ps.setObject(i + 1, p[i]);
		}
		rs = ps.executeQuery();
		ResultSetMetaData rsmd = rs.getMetaData();
		int count = rsmd.getColumnCount();//�õ��ܵ�����
		
		while (rs.next()) {//һ����¼��Ӧһ������
			Object object = c.newInstance();
			
			for (int i = 1; i <=count; i++) {//һ���ֶζ�Ӧһ������
				//Field�ṩ�й����ӿڵĵ����ֶε���Ϣ���Ͷ�̬����Ȩ��
				String fieldname=rsmd.getColumnLabel(i);
				Field f=c.getDeclaredField(fieldname);
				f.setAccessible(true);
				f.set(object, rs.getObject(i));
			}
			
			list.add(object);
			
		}
	} catch (Exception e) {
		e.printStackTrace();
		// TODO: handle exception
	}finally{
		releaseconnection(connection);
	}
	return list;
}

public static int zsg(String sql,Object... p){
	Connection connection=getconnection();
	int n=0;
	try {
		PreparedStatement ps = connection.prepareStatement(sql);
		if (p != null) {
			for (int i = 0; i < p.length; i++) {
				ps.setObject(i + 1, p[i]);
			}
		}
		n = ps.executeUpdate();
	} catch (Exception e) {
		// TODO: handle exception
	}finally{
		releaseconnection(connection);
	}
	return n;
}

//7.�ۺϲ�ѯ
public static int uniqueQuery(String sql,Object...p){
	Connection connection=getconnection();
	int n=0;
	try {
		PreparedStatement ps = connection.prepareStatement(sql);
		for (int i = 0; i < p.length; i++) {
			ps.setObject(i + 1, p[i]);
		}
		ResultSet rs = ps.executeQuery();
		rs.next();
		n = rs.getInt(1);
	} catch (Exception e) {
		e.printStackTrace();
	}finally{
		releaseconnection(connection);
	}
	return n;
}

}
