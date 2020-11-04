package com.manage.alhl.dto;
//문의 테이블 dto
public class QuestionDTO {
	private int queId;
	private String userId;
	private String queTitle;
	private String queContents;
	private java.sql.Timestamp queTime;
	private String queAnswer;
	public int getQueId() {
		return queId;
	}
	public void setQueId(int queId) {
		this.queId = queId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getQueTitle() {
		return queTitle;
	}
	public void setQueTitle(String queTitle) {
		this.queTitle = queTitle;
	}
	public String getQueContents() {
		return queContents;
	}
	public void setQueContents(String queContents) {
		this.queContents = queContents;
	}
	public java.sql.Timestamp getQueTime() {
		return queTime;
	}
	public void setQueTime(java.sql.Timestamp queTime) {
		this.queTime = queTime;
	}
	public String getQueAnswer() {
		return queAnswer;
	}
	public void setQueAnswer(String queAnswer) {
		this.queAnswer = queAnswer;
	}
	
	
}
