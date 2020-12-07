package com.manage.alhl.dto;

import java.sql.Timestamp;

public class EventDTO {
	private int eventId;  //인덱스 
	private String eventName; //이벤트명
	private String adminId; //시행 관리자id
	private int productNum; //이벤트 제품 넘버
	private int eventSize;  //이벤트 수치
	private String eventKind; //이벤트 종류
	private Timestamp startDate; //시행일
	private Timestamp finishDate; //종료일
	private Timestamp reserDate; // 예약일
	
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
