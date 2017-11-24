package com.hzit.services;

import java.util.List;
import java.util.Map;

import com.hzit.pojo.ProductSize;


public interface ProductSizeService {

	public List<Map<String,Object>> size(String productId,int colorId);
	
	public int addInfo(ProductSize size);

	public int delInfo(int sizeId);

	public List<Map<String, Object>> sizeAll();
	
	public Map<String,Object> sizeType(Integer sizeId,String productId);
}
