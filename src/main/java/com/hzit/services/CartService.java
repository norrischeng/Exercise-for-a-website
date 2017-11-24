package com.hzit.services;

import java.util.List;
import java.util.Map;



public interface CartService {

	List<Map<String, Object>> selectCart(Integer userId);

	int deleteCart(Integer id);

	int deleteSelect(String data);




}
