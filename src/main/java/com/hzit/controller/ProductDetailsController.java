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

import com.hzit.pojo.ProductDetails;
import com.hzit.services.ProductDetailsService;



@Controller
@RequestMapping("/details/")
public class ProductDetailsController {

	@Autowired
	private ProductDetailsService detailsService;
	@RequestMapping("addInfo")
	public void addInfo(HttpServletResponse response,ProductDetails product){
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		int i = detailsService.addInfo(product);
		if(i>0){
			out.write("<script type=\"text/javascript\">alert('添加信息成功！');location.href='../member/findMember'</script>");
		}else{
			out.write("<script type=\"text/javascript\">alert('添加信息失败！');location.href='../member/findMember'</script>");
		}
	}
	@RequestMapping("showDetails")
	public String showDetails(Map<String,Object> map,HttpSession session){
		
		String productId = (String)session.getAttribute("productId");
		map.put("details", detailsService.details(productId));
		return "redirect:/size/showSize";
	}
	
	@RequestMapping("delInfo")
	public void delInfo(@RequestParam("productId") String productId,HttpServletResponse response){
		
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		int i = detailsService.delInfo(productId);
		if(i>0){
			out.write("<script type=\"text/javascript\">alert('删除信息成功！');location.href='../'</script>");
		}else{
			out.write("<script type=\"text/javascript\">alert('删除信息失败！');location.href='../'</script>");
		}
	}
	
	@RequestMapping("changeInfo")
	public void changeInfo(@RequestParam("productId") String productId,HttpServletResponse response){
		
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		int i = detailsService.changeInfo(productId);
		if(i>0){
			out.write("<script type=\"text/javascript\">alert('修改信息成功！');location.href='../'</script>");
		}else{
			out.write("<script type=\"text/javascript\">alert('修改信息失败！');location.href='../'</script>");
		}
	}
	@RequestMapping("detailsAll")
	public String detailsAll(Map<String,Object> map){
		
		map.put("list", detailsService.detailsAll());
		return "";
	}
}
