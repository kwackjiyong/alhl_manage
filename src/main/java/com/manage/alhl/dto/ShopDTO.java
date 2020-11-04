package com.manage.alhl.dto;
//사용자 이용권관리 DTO 
public class ShopDTO {
	private int shopId;
	private String userId;
	private int productNum;
	private java.sql.Timestamp checkOutTime;
	private int reCount;
	public int getShopId() {
		return shopId;
	}
	public void setShopId(int shopId) {
		this.shopId = shopId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getProductNum() {
		return productNum;
	}
	public void setProductNum(int productNum) {
		this.productNum = productNum;
	}
	public java.sql.Timestamp getCheckOutTime() {
		return checkOutTime;
	}
	public void setCheckOutTime(java.sql.Timestamp checkOutTime) {
		this.checkOutTime = checkOutTime;
	}
	public int getReCount() {
		return reCount;
	}
	public void setReCount(int reCount) {
		this.reCount = reCount;
	}
}
