package com.dao;

import javax.servlet.http.Cookie;

public class Cookiedao {
	public static Cookie getcookiebyname(String name, Cookie[] cookies){
		if(cookies!=null){
			for (Cookie cookie : cookies) {
				if(name.equals(cookie.getName()))
					return cookie;
			}
		}
		return null;
	}

}
