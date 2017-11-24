package com.hzit.services;

import java.util.Map;

public interface SearchPagingServices {

	Map<String, Object> findPage(Integer indexPage,Integer end, Integer indexPage2);
}
