package com.hzit.services;

import java.util.List;

import com.hzit.pojo.Category;

public interface CategoryService {



	List<Category> selectById(int i);

	List<Category> selectAll();

	List<Category> selectSecond(int i, int size);

	List<Category> selectThird(int i);

	List<Integer> getCategoryId(Integer categoryId);

}
