package com.hzit.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hzit.dao.CategoryMapper;
import com.hzit.services.CategoryService;
import com.hzit.services.SearchPagingServices;


@Controller
@RequestMapping("/Search/")
public class SearchPagingController {
	@Autowired
	SearchPagingServices pagingServices;
	@Autowired
	CategoryService categoryservice;
	// 根据商类别id查询
	@RequestMapping(value = "findPage", produces = "text/html;charset=UTF-8")
	public String findPage(
			Map<String, Object> map,
			@RequestParam(value = "categoryId") Integer categoryId,@RequestParam(value="parentId",defaultValue="0")Integer parentId,
			@RequestParam(value = "indexPage", defaultValue = "1") Integer indexPage) {
		Map<String, Object> outMap=null;
		Integer begin=0;
		Integer end=0;
		if(parentId==0){
			List<Integer> caList1=categoryservice.getCategoryId(categoryId);
			List<Integer> caList2=categoryservice.getCategoryId(caList1.get(0));
			List<Integer> caList3=categoryservice.getCategoryId(caList1.get(caList1.size()-1));
			begin=caList2.get(0);
			end=caList3.get(caList3.size()-1);
			outMap=pagingServices.findPage(begin,end,indexPage);
		}else if(parentId>=1&&parentId<=5){
			List<Integer> caList1=categoryservice.getCategoryId(categoryId);
			begin=caList1.get(0);
			end=caList1.get(caList1.size()-1);
			outMap=pagingServices.findPage(begin,end,indexPage);
		}else {
			end=0;
			outMap = pagingServices.findPage(categoryId,end, indexPage);
		}
		Object count = outMap.get("count");
		Object Page = outMap.get("Page");
		Object pageIndex = outMap.get("indexPage");
		Object list = outMap.get("list");
		map.put("count", count);
		map.put("list", list);
		map.put("indexPage", pageIndex);
		map.put("Page", Page);

		return "SearchPage";
	}

}
