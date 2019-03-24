package cn.aftertomorrow.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Util {
	public static String getYMDHMS(Date date) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd  HH:mm:ss");
		return sdf.format(date);
	}

	public static String getYMDHM(Date date) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd  HH:mm");
		return sdf.format(date);
	}

	public static String getYMD(Date date) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		return sdf.format(date);
	}
	public static String getMD(Date date) {
		SimpleDateFormat sdf = new SimpleDateFormat("MM-dd");
		return sdf.format(date);
	}
}
