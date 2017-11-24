package com.hzit.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface SearchPagingMapper {

	int findCount(@Param("categoryId") Integer categoryId,@Param("end")  Integer end);

	List<Map<String, Object>> findPage(@Param("categoryId") Integer categoryId,@Param("end")int end
			, @Param("indexPage") Integer indexPage);

}
