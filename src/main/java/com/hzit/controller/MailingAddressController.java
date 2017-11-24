package com.hzit.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.hzit.pojo.MailingAddress;
import com.hzit.services.MailingAddressServices;


@Controller
@RequestMapping("/address/")
public class MailingAddressController {
	
	@Autowired
	private MailingAddressServices MAServices;
	
	@RequestMapping("add")
	public String addAddress(MailingAddress record,HttpServletResponse response,
							HttpSession session) throws IOException{
		int mla =MAServices.insertSelective(record);
		int userId=(Integer) session.getAttribute("userId");
		if(mla==0){
			response.getWriter().write("<script type=\"text/javascript\">alert('收货地址增加错误，请重新输入');</script>");
		}else{
			response.getWriter().write("<script type=\"text/javascript\">alert('收货地址增加成功');</script>");
		}
		return "forward:selectAddress?userId="+userId;
	}
	
	@RequestMapping("selectAddress")
	public String selectAll(Integer userId,Map<String, Object> map){
		List<MailingAddress> list=MAServices.selectAll(userId);
		map.put("list", list);
		return "address";
		
	}
	@RequestMapping("delAddress/{id}")
	@ResponseBody
	public Object del(@PathVariable("id")Integer id,Map<String, Object> map){
		int ret=MAServices.delAddress(id);
		map.put("ret", ret);
		map.put("msg", "地址已删除");
		List<Map<String, Object>> resJSON=new ArrayList<Map<String,Object>>();
		resJSON.add(map);
		return JSON.toJSONString(resJSON);
	}
	
	@RequestMapping("updateAddress")
	public String updateAddress(Integer id,String nationNoUse,String region,String city,String county,
			String userAddress,Integer postcode,String userName,String userPhone,String useremail, HttpSession session){
		int userId=(Integer) session.getAttribute("userId");
		int res=MAServices.updateAddress(id,nationNoUse,region,city,county,userAddress,postcode,userName,userPhone,useremail);
		
		
		return "forward:selectAddress?userId="+userId;
		
		
	}
	
}
