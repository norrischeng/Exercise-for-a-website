package com.hzit.pojo;

import java.util.Date;

public class ProductDetailsInfo {
    private String productId;

    private String commodityOrigin;

    private String style;

    private String pattern;

    private String process;

    private String versionType;

    private String itemNumber;

    private String typesOf;

    private String colour;

    private String crowd;

    private String timeToMarket;

    private String collar;

    private String mainMaterial;

    private String applicableSeason;

    private String goodsWeight;

    private String scene;

    private String popularElements;

    private Date createTime;

    private Integer addPersonId;

    private Date changeTime;

    private Integer modifyUserId;

    private Byte status;

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId == null ? null : productId.trim();
    }

    public String getCommodityOrigin() {
        return commodityOrigin;
    }

    public void setCommodityOrigin(String commodityOrigin) {
        this.commodityOrigin = commodityOrigin == null ? null : commodityOrigin.trim();
    }

    public String getStyle() {
        return style;
    }

    public void setStyle(String style) {
        this.style = style == null ? null : style.trim();
    }

    public String getPattern() {
        return pattern;
    }

    public void setPattern(String pattern) {
        this.pattern = pattern == null ? null : pattern.trim();
    }

    public String getProcess() {
        return process;
    }

    public void setProcess(String process) {
        this.process = process == null ? null : process.trim();
    }

    public String getVersionType() {
        return versionType;
    }

    public void setVersionType(String versionType) {
        this.versionType = versionType == null ? null : versionType.trim();
    }

    public String getItemNumber() {
        return itemNumber;
    }

    public void setItemNumber(String itemNumber) {
        this.itemNumber = itemNumber == null ? null : itemNumber.trim();
    }

    public String getTypesOf() {
        return typesOf;
    }

    public void setTypesOf(String typesOf) {
        this.typesOf = typesOf == null ? null : typesOf.trim();
    }

    public String getColour() {
        return colour;
    }

    public void setColour(String colour) {
        this.colour = colour == null ? null : colour.trim();
    }

    public String getCrowd() {
        return crowd;
    }

    public void setCrowd(String crowd) {
        this.crowd = crowd == null ? null : crowd.trim();
    }

    public String getTimeToMarket() {
        return timeToMarket;
    }

    public void setTimeToMarket(String timeToMarket) {
        this.timeToMarket = timeToMarket == null ? null : timeToMarket.trim();
    }

    public String getCollar() {
        return collar;
    }

    public void setCollar(String collar) {
        this.collar = collar == null ? null : collar.trim();
    }

    public String getMainMaterial() {
        return mainMaterial;
    }

    public void setMainMaterial(String mainMaterial) {
        this.mainMaterial = mainMaterial == null ? null : mainMaterial.trim();
    }

    public String getApplicableSeason() {
        return applicableSeason;
    }

    public void setApplicableSeason(String applicableSeason) {
        this.applicableSeason = applicableSeason == null ? null : applicableSeason.trim();
    }

    public String getGoodsWeight() {
        return goodsWeight;
    }

    public void setGoodsWeight(String goodsWeight) {
        this.goodsWeight = goodsWeight == null ? null : goodsWeight.trim();
    }

    public String getScene() {
        return scene;
    }

    public void setScene(String scene) {
        this.scene = scene == null ? null : scene.trim();
    }

    public String getPopularElements() {
        return popularElements;
    }

    public void setPopularElements(String popularElements) {
        this.popularElements = popularElements == null ? null : popularElements.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
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