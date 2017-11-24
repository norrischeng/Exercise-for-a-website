package com.hzit.dao;

import com.hzit.pojo.ProductSpecification;

public interface ProductSpecificationMapper {
    int deleteByPrimaryKey(Integer specificationId);

    int insert(ProductSpecification record);

    int insertSelective(ProductSpecification record);

    ProductSpecification selectByPrimaryKey(Integer specificationId);

    int updateByPrimaryKeySelective(ProductSpecification record);

    int updateByPrimaryKey(ProductSpecification record);
}