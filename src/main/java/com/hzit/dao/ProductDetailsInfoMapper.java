package com.hzit.dao;

import com.hzit.pojo.ProductDetailsInfo;

public interface ProductDetailsInfoMapper {
    int deleteByPrimaryKey(String productId);

    int insert(ProductDetailsInfo record);

    int insertSelective(ProductDetailsInfo record);

    ProductDetailsInfo selectByPrimaryKey(String productId);

    int updateByPrimaryKeySelective(ProductDetailsInfo record);

    int updateByPrimaryKey(ProductDetailsInfo record);
}