package com.hzit.services.Impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hzit.dao.ProductColorMapper;
import com.hzit.pojo.ProductColor;
import com.hzit.services.ProductColorService;



@Service
public class ProductColorImpl  implements ProductColorService{

	@Autowired
	private ProductColorMapper productColorDao;
	@Override
	public List<Map<String, Object>> color(String productId) {
		// TODO Auto-generated method stub
		return productColorDao.color(productId);
	}
	@Override
	public int addInfo(ProductColor color) {
		// TODO Auto-generated method stub
		return productColorDao.addInfo(color);
	}
	@Override
	public int delInfo(int colorId) {
		// TODO Auto-generated method stub
		return productColorDao.delInfo(colorId);
	}
	@Override
	public List<Map<String, Object>> colorAll() {
		// TODO Auto-generated method stub
		return productColorDao.colorAll();
	}
	@Override
	public List<Map<String, Object>> reType(String productId,Integer colorId) {
		// TODO Auto-generated method stub
		return productColorDao.reType(productId,colorId);
	}

}
