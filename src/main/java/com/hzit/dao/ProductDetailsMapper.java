package com.hzit.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.hzit.pojo.ProductDetails;


public interface ProductDetailsMapper {
	
	public int addInfo(ProductDetails product);
	
	public List<Map<String,Object>> details(@Param("productId") String productId);

	public int delInfo(@Param("productId") String productId);
	
	public int changeInfo(@Param("productId") String productId);
	
	public List<Map<String,Object>> detailsAll();
}
