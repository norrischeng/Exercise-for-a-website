package com.hzit.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.hzit.pojo.ProductSize;
import com.hzit.services.ProductSizeService;

@Controller
@RequestMapping("/size/")
public class ProductSizeController {

	@Autowired
	private ProductSizeService productSizeService;
	
	@RequestMapping("showSize")
	public String showSize(Map<String,Object> map,HttpSession session){
		int colorId=1;
		String productId = (String)session.getAttribute("productId");
		map.put("size", productSizeService.size(productId,colorId));
		return "redirect:/image/img";
	}
	
	@RequestMapping("sizeType")
	@ResponseBody
	public Object sizeType(@RequestParam("sizeId") Integer sizeId,@RequestParam("productId") String productId){
		
		Map<String,Object> map =productSizeService.sizeType(sizeId,productId);
		return JSON.toJSONString(map);
	}
	
	
	@RequestMapping("sizeAll")
	public String sizeAll(Map<String,Object> map){
		
		map.put("list", productSizeService.sizeAll());
		return "";
	}
	
	@RequestMapping("addInfo")
	public void addInfo(HttpServletResponse response,ProductSize size){
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		int i = productSizeService.addInfo(size);
		if(i>0){
			out.write("<script type=\"text/javascript\">alert('添加信息成功！');location.href='../member/findMember'</script>");
		}else{
			out.write("<script type=\"text/javascript\">alert('添加信息失败！');location.href='../member/findMember'</script>");
		}
	}
	
	@RequestMapping("delInfo")
	public void delInfo(@RequestParam("sizeId") int sizeId,HttpServletResponse response){
		
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		int i = productSizeService.delInfo(sizeId);
		if(i>0){
			out.write("<script type=\"text/javascript\">alert('删除信息成功！');location.href='../'</script>");
		}else{
			out.write("<script type=\"text/javascript\">alert('删除信息失败！');location.href='../'</script>");
		}
	}
}
