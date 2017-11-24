package com.hzit.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface ProductMapper {

	public List<Map<String, Object>> product(@Param("productId") String productId);

}
