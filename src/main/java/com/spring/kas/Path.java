package com.spring.kas;

import java.io.File;

public class Path {

//	static String ur = "/Users/seung_hee/Desktop/test_folder/";
//	static String de_ur = "/Users/seung_hee/Desktop/test_folder/";
	static String ur = "C:" + File.separator + "Users" + File.separator + "user" + File.separator + "Desktop" + File.separator + "test" + File.separator;

	public static String getUr() {
		return ur;
	}

	public static void setUr(String ur) {
		Path.ur = ur;
	}
	
	
}
