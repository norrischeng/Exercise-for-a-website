package com.hzit.dao;

import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.hzit.pojo.UserInfo;

public interface UserInfoMapper {
	//查询数据库中的邮箱号
	public Map<String, Object> selectUSerInfoMailbox(@Param("mailbox") String mailbox);
	
	//注册
	public int register(@Param("email") String email,@Param("password") String password);
	
	//登录
	public Map<String, Object> login(@Param("email")String email,@Param("password")String password);
}
