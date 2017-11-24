package com.hzit.util;

import java.util.Random;

public class CodeUtil {
	public static String code(int num){
		Random random = new Random();
		StringBuffer sb = new StringBuffer();
		for(int i =0;i<num;i++){
			int a = random.nextInt(10);//0~9的随机数
			sb.append(a);
		}
		return sb.toString();
	}

}
