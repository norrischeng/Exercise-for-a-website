package com.hzit.services.Impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hzit.dao.SearchPagingMapper;
import com.hzit.services.SearchPagingServices;


@Service
public class SearchPagingServicesImpl implements SearchPagingServices {

	@Autowired
	SearchPagingMapper pagingMapper;

	@Override
	public Map<String, Object> findPage(Integer categoryId, Integer end,Integer indexPage) {
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		Map<String, Object> map = new HashMap<String, Object>();
		// 总条数
		int count = pagingMapper.findCount(categoryId,end);
		// 总页数
		int Page = 0;
		if (count % 24 == 0) {
			Page = count / 24;
		} else {
			Page = count / 24 + 1;
		}
		if (indexPage < 1) {
			indexPage = 1;
		}
		if (indexPage > Page) {
			indexPage = Page;
		}
		// 第二页从多少条数据开始显示
		int index = (indexPage - 1) * 24;
		list = pagingMapper.findPage(categoryId,end, index);

		// 所有数据
		map.put("list", list);
		// 总条数
		map.put("count", count);
		// 当前第几页
		map.put("indexPage", indexPage);
		// 总页数
		map.put("Page", Page);

		return map;
	}
}
