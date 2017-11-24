package com.hzit.services.Impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hzit.dao.ProductImgMapper;
import com.hzit.services.ProductImgService;


@Service
public class ProductImgImpl implements ProductImgService{

	@Autowired
	private ProductImgMapper productImgDao;
	@Override
	public List<Map<String, Object>> img(String productId) {
		// TODO Auto-generated method stub
		return productImgDao.img(productId);
	}

}
