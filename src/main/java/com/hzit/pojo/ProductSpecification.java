package com.hzit.pojo;

import java.sql.Date;

public class ProductSpecification {

	private int specification_id;
	private String ProductId;
	private int colorId;
	private int sizeId;
	public int getSpecification_id() {
		return specification_id;
	}
	public void setSpecification_id(int specification_id) {
		this.specification_id = specification_id;
	}
	public String getProductId() {
		return ProductId;
	}
	public void setProductId(String productId) {
		ProductId = productId;
	}
	public int getColorId() {
		return colorId;
	}
	public void setColorId(int colorId) {
		this.colorId = colorId;
	}
	public int getSizeId() {
		return sizeId;
	}
	public void setSizeId(int sizeId) {
		this.sizeId = sizeId;
	}
	public Date getCreatTime() {
		return creatTime;
	}
	public void setCreatTime(Date creatTime) {
		this.creatTime = creatTime;
	}
	public int getAddPersonId() {
		return addPersonId;
	}
	public void setAddPersonId(int addPersonId) {
		this.addPersonId = addPersonId;
	}
	public Date getChangeTime() {
		return changeTime;
	}
	public void setChangeTime(Date changeTime) {
		this.changeTime = changeTime;
	}
	public int getModifyUserId() {
		return modifyUserId;
	}
	public void setModifyUserId(int modifyUserId) {
		this.modifyUserId = modifyUserId;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	private Date creatTime;
	private int addPersonId;
	private Date changeTime;
	private int modifyUserId;
	private int status;
}
