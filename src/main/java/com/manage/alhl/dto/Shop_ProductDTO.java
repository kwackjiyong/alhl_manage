package com.manage.alhl.dto;

import java.sql.Timestamp;

public class Shop_ProductDTO {
	private int spId;
	private int productNum;
	private String productName;
	private int benefit;
	private int price;
	private Timestamp createDate;
	
	public int getSpId() {
		return spId;
	}
	public void setSpId(int spId) {
		this.spId = spId;
	}
	public int getProductNum() {
		return productNum;
	}
	public void setProductNum(int productNum) {
		this.productNum = productNum;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public int getBenefit() {
		return benefit;
	}
	public void setBenefit(int benefit) {
		this.benefit = benefit;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public Timestamp getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Timestamp createDate) {
		this.createDate = createDate;
	}
	@Override
	public String toString() {
		return "Shop_ProductDTO [spId=" + spId + ", productNum=" + productNum + ", productName=" + productName
				+ ", benefit=" + benefit + ", price=" + price + ", createDate=" + createDate + "]";
	}
	
	
}
