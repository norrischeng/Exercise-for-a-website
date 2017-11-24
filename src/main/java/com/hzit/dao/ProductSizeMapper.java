package com.hzit.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.hzit.pojo.ProductSize;


public interface ProductSizeMapper {

	public List<Map<String,Object>> size(@Param("productId") String productId,int colorId);
	
	public int addInfo(ProductSize size);

	public int delInfo(@Param("sizeId") int sizeId);
	
	public List<Map<String,Object>> sizeAll();
	
	public Map<String,Object> sizeType(@Param("sizeId") Integer sizeId,@Param("productId") String productId);
}
