
package com.util;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.multipart.FilePart;
import com.oreilly.servlet.multipart.MultipartParser;
import com.oreilly.servlet.multipart.ParamPart;
import com.oreilly.servlet.multipart.Part;

public class Upload {

	public static Map<String, String> upload(HttpServletRequest request,
			int maxSize, String path) {
		//��map��ʽ�������� key��Ӧ������ǻ�ȡ�����ϵ�name���� value������ǻ�ȡ�����ϵ�name��Ӧ��ֵ
		Map<String, String> map = new HashMap<String, String>();
		Part part = null;
		try {
			MultipartParser mrequest = new MultipartParser(request, maxSize);
			mrequest.setEncoding("utf-8");
			//�������е�part��
			while ((part = mrequest.readNextPart()) != null) {
				if (part.isFile()) {  //�ж��Ƿ����ļ�

					FilePart filepart = (FilePart) part;//ת�����ļ���

					String fileName = filepart.getFileName();//�õ��ļ���

					if (fileName != null && fileName.length() > 0) {
						// ȡ����չ��
						String fileExtName = fileName.substring(
								fileName.lastIndexOf(".") + 1).toLowerCase();
						// ֻ�ϴ�ͼƬ  //�ж�ͼƬ�ϴ��ĸ�ʽ�Ƿ���� ��׺���Ƿ���Ч
						if (fileExtName.equalsIgnoreCase("jpeg")
								|| fileExtName.equalsIgnoreCase("png")||
								fileExtName.equalsIgnoreCase("jpg")
								|| fileExtName.equalsIgnoreCase("gif")
								|| fileExtName.equalsIgnoreCase("ico")
								|| fileExtName.equalsIgnoreCase("bmp")
								|| fileExtName.equalsIgnoreCase("flv")
								|| fileExtName.equalsIgnoreCase("mp4")
								|| fileExtName.equalsIgnoreCase("mp3")) {

							String newFileName = new Date().getTime() + "."
									+ fileExtName;//���¸��ļ���  �ļ���+��չ�� 
							 
							String newPath = path + "/" + newFileName; //�ļ������ļ��ϴ���·��
							File newFile = new File(newPath);

							filepart.writeTo(newFile);  //���ļ�����д�뵽��Ӧ���ļ�����
							//filepart.getName()  �õ� request Ҫ���յĲ���������
							map.put(filepart.getName(), newFileName);//���ļ���Ϣ���浽map��
						} else {
							String newPath = path + "/" + fileName; //�ļ������ļ��ϴ���·��
							File newFile = new File(newPath);
							filepart.writeTo(newFile);  //���ļ�����д�뵽��Ӧ���ļ�����	
							map.put("soft", fileName);
							continue;
						}// ˵���ϴ��Ĳ���ͼƬ
					} else {
 
 			     	map.put("yes","yes");
  
						continue; // ˵��û��ѡ���ϴ�ͼƬ
					}

				} else if (part.isParam()) {  //�ж��Ƿ��ǲ���
					ParamPart paramPart = (ParamPart) part;
					map.put(paramPart.getName(), paramPart.getStringValue());
				}
			}

		} catch (IOException e) {
			e.printStackTrace();
		}
		return map;
	}

}
