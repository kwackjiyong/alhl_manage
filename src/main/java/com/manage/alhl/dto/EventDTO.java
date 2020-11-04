package com.manage.alhl.dto;

import java.sql.Timestamp;

public class EventDTO {
	private int eventId;
	private String eventName;
	private String adminId;
	private int productNum;
	private int eventSize;
	private String eventKind;
	private Timestamp startDate;
	private Timestamp finishDate;
	private Timestamp reserDate;
	
	//getter/setter
	public int getEventId() {
		return eventId;
	}
	public void setEventId(int eventId) {
		this.eventId = eventId;
	}
	public String getEventName() {
		return eventName;
	}
	public void setEventName(String eventName) {
		this.eventName = eventName;
	}
	public String getAdminId() {
		return adminId;
	}
	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}
	public int getProductNum() {
		return productNum;
	}
	public void setProductNum(int productNum) {
		this.productNum = productNum;
	}
	public int getEventSize() {
		return eventSize;
	}
	public void setEventSize(int eventSize) {
		this.eventSize = eventSize;
	}
	public String getEventKind() {
		return eventKind;
	}
	public void setEventKind(String eventKind) {
		this.eventKind = eventKind;
	}
	public Timestamp getStartDate() {
		return startDate;
	}
	public void setStartDate(Timestamp startDate) {
		this.startDate = startDate;
	}
	public Timestamp getFinishDate() {
		return finishDate;
	}
	public void setFinishDate(Timestamp finishDate) {
		this.finishDate = finishDate;
	}
	public Timestamp getReserDate() {
		return reserDate;
	}
	public void setReserDate(Timestamp reserDate) {
		this.reserDate = reserDate;
	}
	
	// toString()
	@Override
	public String toString() {
		return "EventDTO [eventId=" + eventId + ", eventName=" + eventName + ", adminId=" + adminId + ", productNum="
				+ productNum + ", eventSize=" + eventSize + ", eventKind=" + eventKind + ", startDate=" + startDate
				+ ", finishDate=" + finishDate + ", reserDate=" + reserDate + "]";
	}
}
