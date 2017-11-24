package com.hzit.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.hzit.pojo.ProductColor;
import com.hzit.services.ProductColorService;


@Controller
@RequestMapping("/color/")
public class ProductColorController {

	@Autowired
	private ProductColorService productColorService;
	@RequestMapping("showColor")
	public String showColor(@RequestParam("productId") String productId,Map<String,Object> map,HttpSession session){

		map.put("color", productColorService.color(productId));
		session.setAttribute("productId", productId);
		session.setAttribute("color", productColorService.color(productId));
		return "redirect:/details/showDetails";
	} 
	
	@RequestMapping("reType")
	@ResponseBody
	public Object reType(@RequestParam("productId") String productId,@RequestParam("colorId") Integer colorId){
		
		List<Map<String,Object>> list =productColorService.reType(productId,colorId);
		return JSON.toJSONString(list);
	}
	
	@RequestMapping("colorAll")
	public String colorAll(Map<String,Object> map){
		
		map.put("list", productColorService.colorAll());
		return "color";
	}
	
	@RequestMapping("addInfo")
	public void addInfo(HttpServletResponse response,ProductColor color){
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		int i = productColorService.addInfo(color);
		if(i>0){
			out.write("<script type=\"text/javascript\">alert('添加信息成功！');location.href='../member/findMember'</script>");
		}else{
			out.write("<script type=\"text/javascript\">alert('添加信息失败！');location.href='../member/findMember'</script>");
		}
	}
	
	@RequestMapping("delInfo")
	public void delInfo(@RequestParam("colorId") int colorId,HttpServletResponse response){
		
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		int i = productColorService.delInfo(colorId);
		if(i>0){
			out.write("<script type=\"text/javascript\">alert('删除信息成功！');location.href='../'</script>");
		}else{
			out.write("<script type=\"text/javascript\">alert('删除信息失败！');location.href='../'</script>");
		}
	}
	
}
