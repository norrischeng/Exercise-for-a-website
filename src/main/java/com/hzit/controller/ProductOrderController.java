package com.hzit.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hzit.services.ProductOrderServices;

@Controller
@RequestMapping("/pOrder/")
public class ProductOrderController {
	
	@Autowired
	private ProductOrderServices pServices;
	
	@RequestMapping("shopping")
	public String productOrder(Integer userId,HashMap<String, Object> map,
								HttpSession session){
		List<Map<String, Object>> list=pServices.selectPO(userId);
		 map.put("list", list);
		 session.setAttribute("userId", userId);
		return "dingDan";
		
	}
	
	
	
	

}
