package com.hzit.services.Impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hzit.dao.ProductDetailsMapper;
import com.hzit.pojo.ProductDetails;
import com.hzit.services.ProductDetailsService;

@Service
public class ProductDetailsImpl implements ProductDetailsService{

	@Autowired
	private ProductDetailsMapper detailDao;
	
	@Override
	public int addInfo(ProductDetails product) {
		// TODO Auto-generated method stub
		return detailDao.addInfo(product);
	}

	@Override
	public List<Map<String, Object>> details(String productId) {
		// TODO Auto-generated method stub
		return detailDao.details(productId);
	}

	@Override
	public int delInfo(String productId) {
		// TODO Auto-generated method stub
		return detailDao.delInfo(productId);
	}

	@Override
	public int changeInfo(String productId) {
		// TODO Auto-generated method stub
		return detailDao.changeInfo(productId);
	}

	@Override
	public List<Map<String, Object>> detailsAll() {
		// TODO Auto-generated method stub
		return detailDao.detailsAll();
	}

}
