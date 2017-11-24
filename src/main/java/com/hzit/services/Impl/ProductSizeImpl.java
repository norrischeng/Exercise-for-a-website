package com.hzit.services.Impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hzit.dao.ProductSizeMapper;
import com.hzit.pojo.ProductSize;
import com.hzit.services.ProductSizeService;


@Service
public class ProductSizeImpl implements ProductSizeService{

	@Autowired
	private ProductSizeMapper productSizeDao;
	@Override
	public List<Map<String, Object>> size(String productId,int colorId) {
		// TODO Auto-generated method stub
		return productSizeDao.size(productId,colorId);
	}
	@Override
	public int addInfo(ProductSize size) {
		// TODO Auto-generated method stub
		return productSizeDao.addInfo(size);
	}
	@Override
	public int delInfo(int sizeId) {
		// TODO Auto-generated method stub
		return productSizeDao.delInfo(sizeId);
	}
	@Override
	public List<Map<String, Object>> sizeAll() {
		// TODO Auto-generated method stub
		return productSizeDao.sizeAll();
	}
	@Override
	public Map<String, Object> sizeType(Integer sizeId,String productId) {
		// TODO Auto-generated method stub
		return productSizeDao.sizeType(sizeId,productId);
	}

}
