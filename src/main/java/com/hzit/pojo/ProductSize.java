package com.hzit.pojo;

import java.sql.Date;

public class ProductSize {

	private int sizeId;
	private String productId;
	private String sizeName;
	private String sizeDescribe;
	private Date creatTime;
	private int modifityUserId;
	private int status;
	public int getSizeId() {
		return sizeId;
	}
	public void setSizeId(int sizeId) {
		this.sizeId = sizeId;
	}
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public String getSizeName() {
		return sizeName;
	}
	public void setSizeName(String sizeName) {
		this.sizeName = sizeName;
	}
	public String getSizeDescribe() {
		return sizeDescribe;
	}
	public void setSizeDescribe(String sizeDescribe) {
		this.sizeDescribe = sizeDescribe;
	}
	public Date getCreatTime() {
		return creatTime;
	}
	public void setCreatTime(Date creatTime) {
		this.creatTime = creatTime;
	}
	public int getModifityUserId() {
		return modifityUserId;
	}
	public void setModifityUserId(int modifityUserId) {
		this.modifityUserId = modifityUserId;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
}
