package com.hzit.pojo;

import java.sql.Date;

public class ProductImg {

	private int imageId;
	private String ProductId;
	private String bigImgPath;
	private String smallImgPath;
	private String biggerImgPath;
	public String getBiggerImgPath() {
		return biggerImgPath;
	}
	public void setBiggerImgPath(String biggerImgPath) {
		this.biggerImgPath = biggerImgPath;
	}
	private int isCover;
	private Date creatTime;
	private int addPersonId;
	private Date updateTime;
	private int modifyUserId;
	private int status;
	public int getImageId() {
		return imageId;
	}
	public void setImageId(int imageId) {
		this.imageId = imageId;
	}
	public String getProductId() {
		return ProductId;
	}
	public void setProductId(String productId) {
		ProductId = productId;
	}
	public String getBigImgPath() {
		return bigImgPath;
	}
	public void setBigImgPath(String bigImgPath) {
		this.bigImgPath = bigImgPath;
	}
	public String getSmallImgPath() {
		return smallImgPath;
	}
	public void setSmallImgPath(String smallImgPath) {
		this.smallImgPath = smallImgPath;
	}
	public int getIsCover() {
		return isCover;
	}
	public void setIsCover(int isCover) {
		this.isCover = isCover;
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
	public Date getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
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
}
