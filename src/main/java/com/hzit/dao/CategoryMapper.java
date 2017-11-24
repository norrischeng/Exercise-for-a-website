package com.hzit.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hzit.pojo.Category;

public interface CategoryMapper {
    int deleteByPrimaryKey(Integer categoryId);

    int insert(Category record);

    int insertSelective(Category record);

    Category selectByPrimaryKey(Integer categoryId);

    int updateByPrimaryKeySelective(Category record);

    int updateByPrimaryKey(Category record);

	List<Category> selectById(@Param("parentId")int i);

	List<Category> selectAll();

	List<Category> selectSecond(@Param("i")int i,@Param("j") int size);

	List<Category> selectThird(@Param("i")int i);

	List<Integer> getCategoryId(@Param("parentId")Integer categoryId);
}