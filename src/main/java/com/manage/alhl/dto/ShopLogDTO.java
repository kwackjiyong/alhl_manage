package com.manage.alhl.dto;

import java.sql.Timestamp;

public class ShopLogDTO {
	
	private int sLogId;
	private int productNum;
	private int payment;
	private String userId;
	private Timestamp logDate;
	private int eventId;
	
	//getter/setter
	public int getsLogId() {
		return sLogId;
	}
	public void setsLogId(int sLogId) {
		this.sLogId = sLogId;
	}
	public int getProductNum() {
		return productNum;
	}
	public void setProductNum(int productNum) {
		this.productNum = productNum;
	}
	public int getPayment() {
		return payment;
	}
	public void setPayment(int payment) {
		this.payment = payment;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public Timestamp getLogDate() {
		return logDate;
	}
	public void setLogDate(Timestamp logDate) {
		this.logDate = logDate;
	}
	public int getEventId() {
		return eventId;
	}
	public void setEventId(int eventId) {
		this.eventId = eventId;
	}
	
	// toString()
	@Override
	public String toString() {
		return "ShopLogDTO [sLogId=" + sLogId + ", productNum=" + productNum + ", payment=" + payment + ", userId="
				+ userId + ", logDate=" + logDate + ", eventId=" + eventId + "]";
	}
	
}
