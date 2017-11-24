package com.hzit.dao;

import com.hzit.pojo.FocusGoods;

public interface FocusGoodsMapper {
    int deleteByPrimaryKey(Integer focusId);

    int insert(FocusGoods record);

    int insertSelective(FocusGoods record);

    FocusGoods selectByPrimaryKey(Integer focusId);

    int updateByPrimaryKeySelective(FocusGoods record);

    int updateByPrimaryKey(FocusGoods record);
}