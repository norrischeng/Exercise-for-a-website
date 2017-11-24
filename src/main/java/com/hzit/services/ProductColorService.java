package com.hzit.services;

import java.util.List;
import java.util.Map;

import com.hzit.pojo.ProductColor;


public interface ProductColorService {

	public List<Map<String,Object>> color(String productId);
	
	public int addInfo(ProductColor color);

	public int delInfo(int colorId);

	public List<Map<String, Object>> colorAll();
	
	public List<Map<String,Object>> reType(String productId,Integer colorId);
}
