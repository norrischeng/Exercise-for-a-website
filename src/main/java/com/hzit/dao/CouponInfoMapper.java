package com.hzit.dao;

import com.hzit.pojo.CouponInfo;


public interface CouponInfoMapper {
    int deleteByPrimaryKey(Integer couponId);

    int insert(CouponInfo record);

    int insertSelective(CouponInfo record);

    CouponInfo selectByPrimaryKey(Integer couponId);

    int updateByPrimaryKeySelective(CouponInfo record);

    int updateByPrimaryKey(CouponInfo record);
}