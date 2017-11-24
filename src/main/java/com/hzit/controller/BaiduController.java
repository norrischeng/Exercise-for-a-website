package com.hzit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/baidu/")
public class BaiduController {
	
	

	@RequestMapping("text")
	@ResponseBody
	public void text(String goodsInfo){
		
		System.out.println(goodsInfo);
	}
}
