package com.sap.sapsite.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Tools {
	
	//获取现在时间，并以xxxx-xx-xx形式返回
	public static String getTime(){
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
		return sf.format(new Date());
	}
}
