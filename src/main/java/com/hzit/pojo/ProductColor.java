package com.hzit.pojo;

import java.sql.Date;

public class ProductColor {

	private int colorId;
	private String productId;
	private String colorType;
	private String colorDescribe;
	private Date creatTime;
	private int addPersonId;
	private Date changeTime;
	private int modifityUserId;
	private int status;
	public int getColorId() {
		return colorId;
	}
	public void setColorId(int colorId) {
		this.colorId = colorId;
	}
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public String getColorType() {
		return colorType;
	}
	public void setColorType(String colorType) {
		this.colorType = colorType;
	}
	public String getColorDescribe() {
		return colorDescribe;
	}
	public void setColorDescribe(String colorDescribe) {
		this.colorDescribe = colorDescribe;
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
