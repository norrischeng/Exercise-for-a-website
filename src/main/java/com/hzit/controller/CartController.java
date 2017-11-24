package com.hzit.controller;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.hzit.services.CartService;

@Controller
@RequestMapping("/cart/")
public class CartController {
	@Autowired
	private CartService cartservice;

	@RequestMapping("selectCart")
	public String selectCart(Integer userId, Map<String, Object> map) {
		List<Map<String, Object>> cartList = cartservice.selectCart(userId);
		Double totalPrice=0.0;
		Double totalWeight=0.0;
		for(Map<String,Object> cartMap:cartList){
			BigDecimal account=(BigDecimal)cartMap.get("productPrice");
			double price =account.doubleValue();
			totalPrice=totalPrice+price*(Integer)cartMap.get("productQuantity");
			BigDecimal weight=(BigDecimal)cartMap.get("weight");
			 double productWeight=weight.doubleValue();
			totalWeight=totalPrice+productWeight;
		}
		double finalPrice=totalPrice+8.8;
		map.put("cartList", cartList);
		map.put("totalPrice",totalPrice);
		map.put("totalWeight",totalWeight);
		map.put("finalPrice",finalPrice);
		return "GouWuChe";
	}
	@ResponseBody
	@RequestMapping(value="selectCartAjax", produces = "text/html; charset=utf-8")
	public Object selectCart() {
		List<Map<String, Object>> cartList = cartservice.selectCart(1);
		return JSON.toJSONString(cartList);
	}
	@RequestMapping("deleteOne")
	public Object deleteCart(Integer id){
		int i=cartservice.deleteCart(id);
		return "forward:selectCart?userId=1";
		
	}
	@RequestMapping("deleteSelect")
	public Object deleteSelect(String data){
		data="0,"+data;
		int i=cartservice.deleteSelect(data);
		return "forward:selectCart?userId=1";
		
	}
	
}
