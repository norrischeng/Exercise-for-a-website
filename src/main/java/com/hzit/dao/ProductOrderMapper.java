package com.hzit.dao;

import java.util.List;
import java.util.Map;

import com.hzit.pojo.ProductOrder;

public interface ProductOrderMapper {
    int deleteByPrimaryKey(Integer orderNo);

    int insert(ProductOrder record);

    int insertSelective(ProductOrder record);

    ProductOrder selectByPrimaryKey(Integer orderNo);

    int updateByPrimaryKeySelective(ProductOrder record);

    int updateByPrimaryKey(ProductOrder record);

	List<Map<String, Object>> selectPO(Integer userId);
}