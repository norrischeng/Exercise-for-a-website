package com.hzit.services;

import java.util.List;

import com.hzit.pojo.MailingAddress;

public interface MailingAddressServices {
	
	int insertSelective(MailingAddress record);

	List<MailingAddress> selectAll(Integer userId);

	int delAddress(Integer id);

	int updateAddress(Integer id, String nationNoUse, String region, String city, String county, String userAddress, Integer postcode, String userName, String userPhone, String useremail);

}
