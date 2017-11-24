package com.hzit.services.Impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hzit.dao.CartMapper;
import com.hzit.services.CartService;


@Service
public class CartServiceImpl implements CartService{
@Autowired
private CartMapper cartmapper;

@Override
public List<Map<String, Object>> selectCart(Integer userId) {
	// TODO Auto-generated method stub
	return cartmapper.selectCart(userId);
}

@Override
public int deleteCart(Integer id) {
	// TODO Auto-generated method stub
	return cartmapper.deleteCart(id);
}

@Override
public int deleteSelect(String data) {
	// TODO Auto-generated method stub
	return cartmapper.deleteSelect(data);
}
	

}
