package com.hzit.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.hzit.pojo.Cart;

public interface CartMapper {
    int deleteByPrimaryKey(Integer cartId);

    int insert(Cart record);

    int insertSelective(Cart record);

    Cart selectByPrimaryKey(Integer cartId);

    int updateByPrimaryKeySelective(Cart record);

    int updateByPrimaryKey(Cart record);

	List<Map<String, Object>> selectCart(@Param("userId")Integer userId);

	int deleteCart(@Param("id")Integer id);

	int deleteSelect(@Param("data")String data);
}