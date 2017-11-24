package com.hzit.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.hzit.pojo.ProductColor;


public interface ProductColorMapper {

	public List<Map<String,Object>> color(@Param("productId") String productId);
	
	public int addInfo(ProductColor color);

	public int delInfo(@Param("colorId") int colorId);
	
	public List<Map<String,Object>> colorAll();
	
	public List<Map<String,Object>> reType(@Param("productId") String productId,@Param("colorId") Integer colorId);
}
