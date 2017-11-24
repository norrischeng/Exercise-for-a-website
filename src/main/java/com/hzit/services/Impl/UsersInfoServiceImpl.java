package com.hzit.services.Impl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hzit.dao.UserInfoMapper;
import com.hzit.services.UsersInfoService;

@Service
public class UsersInfoServiceImpl implements UsersInfoService {
	
	@Autowired
	private UserInfoMapper usersInfoMapper;
	
	@Override
	public Map<String, Object> selectUSerInfoMailbox(String mailbox) {
		return usersInfoMapper.selectUSerInfoMailbox(mailbox);
	}

	@Override
	public int register(String email, String password) {
		return usersInfoMapper.register(email, password);
	}

	@Override
	public Map<String,Object> login(String email, String password) {
		return usersInfoMapper.login(email, password);
	}

}
