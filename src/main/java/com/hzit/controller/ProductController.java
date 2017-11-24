package com.hzit.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hzit.services.ProductService;

@Controller
@RequestMapping("/product/")
public class ProductController {

	@Autowired
	private ProductService productService;
	
	@RequestMapping("showProduct")
	public String productInfo(Map<String,Object> map,HttpSession session){

		String productId = (String)session.getAttribute("productId");
		map.put("list", productService.product(productId));
		return "productdetail";
	}
}
