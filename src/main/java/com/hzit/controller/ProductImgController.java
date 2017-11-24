package com.hzit.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hzit.services.ProductImgService;

@Controller
@RequestMapping("/image/")
public class ProductImgController {

	@Autowired
	private ProductImgService productImgService;
	
	@RequestMapping("img")
	public String img(Map<String,Object> map,HttpSession session){
		
		String productId = (String)session.getAttribute("productId");
		map.put("img", productImgService.img(productId));
		return "redirect:/product/showProduct";
	}
}
