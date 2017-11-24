package com.hzit.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface ProductImgMapper {

	public List<Map<String,Object>> img(@Param("productId") String productId);
}
