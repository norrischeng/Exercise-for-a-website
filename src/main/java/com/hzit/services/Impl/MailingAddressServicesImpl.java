package com.hzit.services.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hzit.dao.MailingAddressMapper;
import com.hzit.pojo.MailingAddress;
import com.hzit.services.MailingAddressServices;
@Service
public class MailingAddressServicesImpl implements MailingAddressServices {
	
	@Autowired
	private MailingAddressMapper MAMapper;

	@Override
	public int insertSelective(MailingAddress record) {
		return MAMapper.insertSelective(record);
	}

	@Override
	public List<MailingAddress> selectAll(Integer userId) {
		return MAMapper.selectAll(userId);
	}

	@Override
	public int delAddress(Integer id) {
		return MAMapper.delAddress(id);
	}

	@Override
	public int updateAddress(Integer id, String nationNoUse, String region,
			String city, String county, String userAddress, Integer postcode,
			String userName, String userPhone, String useremail) {
		return MAMapper.updateAddress(id, nationNoUse, region, city, county, userAddress, postcode, userName, userPhone, useremail);
	}


}
