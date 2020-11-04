package com.manage.alhl.dto;

import java.sql.Timestamp;

public class NoticeDTO {

	private int postId;
	private String userId;
	private String title;
	private String contents;
	private int viewcnt;
	private int serviceId;
	private Timestamp creatTime;
	private String sContents;
	private int recnt;
	
	public int getRecnt() {
		return recnt;
	}
	public void setRecnt(int recnt) {
		this.recnt = recnt;
	}
	public int getPostId() {
		return postId;
	}
	public void setPostId(int postId) {
		this.postId = postId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public int getViewcnt() {
		return viewcnt;
	}
	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	}
	public int getServiceId() {
		return serviceId;
	}
	public void setServiceId(int serviceId) {
		this.serviceId = serviceId;
	}
	public Timestamp getCreatTime() {
		return creatTime;
	}
	public void setCreatTime(Timestamp creatTime) {
		this.creatTime = creatTime;
	}
	public String getsContents() {
		return sContents;
	}
	public void setsContents(String sContents) {
		this.sContents = sContents;
	}
	@Override
	public String toString() {
		return "NoticeDTO [postId=" + postId + ", userId=" + userId + ", title=" + title + ", contents=" + contents
				+ ", viewcnt=" + viewcnt + ", serviceId=" + serviceId + ", creatTime=" + creatTime + "]";
	}
	
	
	
}
