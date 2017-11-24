package com.hzit.services;

import java.util.List;
import java.util.Map;

import com.hzit.pojo.ProductDetails;


public interface ProductDetailsService {

	public int addInfo(ProductDetails product);

	public List<Map<String, Object>> details(String productId);

	public int delInfo(String productId);

	public int changeInfo(String productId);

	public List<Map<String, Object>> detailsAll();
			
}
