package com.hzit.pojo;

import java.math.BigDecimal;
import java.sql.Date;

public class Product {
	private String productId;
	private int categoryId;
	private String productName;
	private String subtitle;
	private String advertising_language;
	private BigDecimal price;
	private double discount;
	private double integralNumber;
	private BigDecimal freight;
	private int stock;
	private int isHotItem;
	private int isShowIndex;
	private int specificationId;
	private String subImages;
	private String detail;
	private int monthlySales;
	private int viewsNumber;
	private int evaluationNumber;
	private int favoritiesNumber;
	private Date creatTime;
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getSubtitle() {
		return subtitle;
	}
	public void setSubtitle(String subtitle) {
		this.subtitle = subtitle;
	}
	public String getAdvertising_language() {
		return advertising_language;
	}
	public void setAdvertising_language(String advertising_language) {
		this.advertising_language = advertising_language;
	}
	public BigDecimal getPrice() {
		return price;
	}
	public void setPrice(BigDecimal price) {
		this.price = price;
	}
	public double getDiscount() {
		return discount;
	}
	public void setDiscount(double discount) {
		this.discount = discount;
	}
	public double getIntegralNumber() {
		return integralNumber;
	}
	public void setIntegralNumber(double integralNumber) {
		this.integralNumber = integralNumber;
	}
	public BigDecimal getFreight() {
		return freight;
	}
	public void setFreight(BigDecimal freight) {
		this.freight = freight;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public int getIsHotItem() {
		return isHotItem;
	}
	public void setIsHotItem(int isHotItem) {
		this.isHotItem = isHotItem;
	}
	public int getIsShowIndex() {
		return isShowIndex;
	}
	public void setIsShowIndex(int isShowIndex) {
		this.isShowIndex = isShowIndex;
	}
	public int getSpecificationId() {
		return specificationId;
	}
	public void setSpecificationId(int specificationId) {
		this.specificationId = specificationId;
	}
	public String getSubImages() {
		return subImages;
	}
	public void setSubImages(String subImages) {
		this.subImages = subImages;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public int getMonthlySales() {
		return monthlySales;
	}
	public void setMonthlySales(int monthlySales) {
		this.monthlySales = monthlySales;
	}
	public int getViewsNumber() {
		return viewsNumber;
	}
	public void setViewsNumber(int viewsNumber) {
		this.viewsNumber = viewsNumber;
	}
	public int getEvaluationNumber() {
		return evaluationNumber;
	}
	public void setEvaluationNumber(int evaluationNumber) {
		this.evaluationNumber = evaluationNumber;
	}
	public int getFavoritiesNumber() {
		return favoritiesNumber;
	}
	public void setFavoritiesNumber(int favoritiesNumber) {
		this.favoritiesNumber = favoritiesNumber;
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
	private int addPersonId;
	
	

}
