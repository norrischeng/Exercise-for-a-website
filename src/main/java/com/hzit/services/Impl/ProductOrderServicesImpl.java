package com.hzit.services.Impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hzit.dao.ProductOrderMapper;
import com.hzit.services.ProductOrderServices;

@Service
public class ProductOrderServicesImpl implements ProductOrderServices {

	@Autowired
	private ProductOrderMapper pOMapper;

	@Override
	public List<Map<String, Object>> selectPO(Integer userId) {
		// TODO Auto-generated method stub
		return pOMapper.selectPO(userId);
	}
	



}
