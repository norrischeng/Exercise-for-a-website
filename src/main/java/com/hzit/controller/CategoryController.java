package com.hzit.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hzit.pojo.Category;
import com.hzit.services.CategoryService;

@Controller
@RequestMapping("/category/")
public class CategoryController {
	@Autowired
	private CategoryService categoryservice;

	@RequestMapping("selectAll")
	public String selectAll(Map<String, Object> map) {
//		List<Category> firstList = categoryservice.selectById(0);
//		
//		List<List<Category>> secondList = new ArrayList<List<Category>>();
//		List<Category> list = new ArrayList<Category>();
//		List<List<Category>> thirdList=new ArrayList<List<Category>>();
//		int k=0;
//		for (int i = 0; i < firstList.size(); i++) {
//			secondList.add(categoryservice.selectById(i + 1));
//			for(int j=0;j<secondList. get(i).size();j++){
//				thirdList.add(categoryservice.selectById(6+k));
//				k++;
//			}
//		}
		List<Category> firstList = categoryservice.selectById(0);
		List<Category> secondList = categoryservice.selectSecond(1,firstList.size());
		List<Category> thirdList = categoryservice.selectThird(firstList.size());
		map.put("firstList",firstList);
		map.put("secondList",secondList);
		map.put("thirdList",thirdList);
			return "head";
	}
}
