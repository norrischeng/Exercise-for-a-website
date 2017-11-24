package com.hzit.services.Impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hzit.dao.ProductMapper;
import com.hzit.services.ProductService;

@Service
public class ProductImpl implements ProductService{

	@Autowired
	private ProductMapper productDao;
	@Override
	public List<Map<String, Object>> product(String productId) {
		// TODO Auto-generated method stub
		
		return productDao.product(productId);

}
}
