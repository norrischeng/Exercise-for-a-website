package com.hzit.pojo;

import java.util.Date;

public class Category {
    private Integer categoryId;

    private String categoryName;

    private Integer parentId;

    private Integer showOrder;

    private Byte isShowNav;

    private Byte isShowIndex;

    private Date creaetTime;

    private Integer addPersonId;

    private Date changeTime;

    private Integer modifyUserId;

    private Byte status;

    public Integer getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Integer categoryId) {
        this.categoryId = categoryId;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName == null ? null : categoryName.trim();
    }

    public Integer getParentId() {
        return parentId;
    }

    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    public Integer getShowOrder() {
        return showOrder;
    }

    public void setShowOrder(Integer showOrder) {
        this.showOrder = showOrder;
    }

    public Byte getIsShowNav() {
        return isShowNav;
    }

    public void setIsShowNav(Byte isShowNav) {
        this.isShowNav = isShowNav;
    }

    public Byte getIsShowIndex() {
        return isShowIndex;
    }

    public void setIsShowIndex(Byte isShowIndex) {
        this.isShowIndex = isShowIndex;
    }

    public Date getCreaetTime() {
        return creaetTime;
    }

    public void setCreaetTime(Date creaetTime) {
        this.creaetTime = creaetTime;
    }

    public Integer getAddPersonId() {
        return addPersonId;
    }

    public void setAddPersonId(Integer addPersonId) {
        this.addPersonId = addPersonId;
    }

    public Date getChangeTime() {
        return changeTime;
    }

    public void setChangeTime(Date changeTime) {
        this.changeTime = changeTime;
    }

    public Integer getModifyUserId() {
        return modifyUserId;
    }

    public void setModifyUserId(Integer modifyUserId) {
        this.modifyUserId = modifyUserId;
    }

    public Byte getStatus() {
        return status;
    }

    public void setStatus(Byte status) {
        this.status = status;
    }
}