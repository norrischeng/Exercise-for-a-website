package com.hzit.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hzit.pojo.MailingAddress;

public interface MailingAddressMapper {

    int insertSelective(MailingAddress record);

	List<MailingAddress> selectAll(Integer userId);

	int delAddress(Integer id);

	int updateAddress(@Param("id")Integer id,@Param("nationNoUse") String nationNoUse,@Param("region") String region,@Param("city") String city,@Param("county") String county, @Param("userAddress")String userAddress,@Param("postcode") Integer postcode,@Param("userName") String userName,@Param("userPhone") String userPhone, @Param("useremail")String useremail);
}