package com.hzit.pojo;

import java.util.Date;

public class PayInfo {
    private Integer id;

    private Integer userId;

    private Integer orderNo;

    private Byte payPlatform;

    private String platformNumber;

    private Byte platformStatus;

    private Date createTime;

    private Date updateTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(Integer orderNo) {
        this.orderNo = orderNo;
    }

    public Byte getPayPlatform() {
        return payPlatform;
    }

    public void setPayPlatform(Byte payPlatform) {
        this.payPlatform = payPlatform;
    }

    public String getPlatformNumber() {
        return platformNumber;
    }

    public void setPlatformNumber(String platformNumber) {
        this.platformNumber = platformNumber == null ? null : platformNumber.trim();
    }

    public Byte getPlatformStatus() {
        return platformStatus;
    }

    public void setPlatformStatus(Byte platformStatus) {
        this.platformStatus = platformStatus;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
}