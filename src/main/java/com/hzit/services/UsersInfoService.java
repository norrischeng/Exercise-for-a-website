package com.hzit.services;

import java.util.Map;



public interface UsersInfoService {
	//邮箱验证
	public Map<String, Object> selectUSerInfoMailbox(String mailbox);
	
	//注册邮箱
	public int register(String email,String password);
	
	//登录
	public Map<String,Object> login(String email,String password);
	
}
