package com.hzit.dao;

import com.hzit.pojo.UserInterests;

public interface UserInterestsMapper {
    int deleteByPrimaryKey(Integer interestId);

    int insert(UserInterests record);

    int insertSelective(UserInterests record);

    UserInterests selectByPrimaryKey(Integer interestId);

    int updateByPrimaryKeySelective(UserInterests record);

    int updateByPrimaryKey(UserInterests record);
}