package com.dao;

import java.util.List;

import com.pojo.Equipment;
import com.util.DBUtil;

public class EquipmentDAO {

	public Equipment getequipment(String id) {
		String sql="select equipmentid,houseid,bingxiang,tv,reshuiqi,kuandai,kongtiao,shafa,chuang,nuanqi,yigui,zuofan,toilet,yangtai from equipment where houseid=?";
		List<Equipment> list=DBUtil.query(Equipment.class, sql, id);
		if(list.size()!=0)
			return list.get(0);
		else
			return null;
	}

}
