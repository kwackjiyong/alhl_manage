package com.manage.alhl.dto;

import java.sql.Timestamp;

public class CommentDTO {

	private int cId;	//댓글번호
    private int postId;	// 게시글 번호
    private String rContent;	//댓글내용
    private String userId;	//댓글 작성자
    private String userName; //댓글 작성자의 이름 
    private Timestamp reg_date;	//댓글 날짜
    private Timestamp upreg_date; // 댓글 수정날짜
	public int getcId() {
		return cId;
	}
	public void setcId(int cId) {
		this.cId = cId;
	}
	public int getPostId() {
		return postId;
	}
	public void setPostId(int postId) {
		this.postId = postId;
	}
	public String getrContent() {
		return rContent;
	}
	public void setrContent(String rContent) {
		this.rContent = rContent;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public Timestamp getReg_date() {
		return reg_date;
	}
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}
	public Timestamp getUpreg_date() {
		return upreg_date;
	}
	public void setUpreg_date(Timestamp upreg_date) {
		this.upreg_date = upreg_date;
	}
	@Override
	public String toString() {
		return "CommentDTO [cId=" + cId + ", postId=" + postId + ", rContent=" + rContent + ", userId=" + userId
				+ ", userName=" + userName + ", reg_date=" + reg_date + ", upreg_date=" + upreg_date + "]";
	}
	
	
    
    
}
