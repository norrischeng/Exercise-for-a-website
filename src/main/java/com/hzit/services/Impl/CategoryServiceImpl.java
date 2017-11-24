package com.hzit.services.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hzit.dao.CategoryMapper;
import com.hzit.pojo.Category;
import com.hzit.services.CategoryService;

@Service
public class CategoryServiceImpl implements CategoryService{
@Autowired
private CategoryMapper categorymapper;

@Override
public List<Category> selectById(int i) {
	// TODO Auto-generated method stub
	return categorymapper.selectById(i);
}

@Override
public List<Category> selectAll() {
	// TODO Auto-generated method stub
	return categorymapper.selectAll();
}

@Override
public List<Category> selectSecond(int i, int size) {
	// TODO Auto-generated method stub
	return categorymapper.selectSecond(i,size);
}

@Override
public List<Category> selectThird(int i) {
	// TODO Auto-generated method stub
	return categorymapper.selectThird(i);
}

@Override
public List<Integer> getCategoryId(Integer categoryId) {
	// TODO Auto-generated method stub
	return categorymapper.getCategoryId(categoryId);
}





}

