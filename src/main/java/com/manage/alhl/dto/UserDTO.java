package com.manage.alhl.dto;
public class UserDTO {		// 유저테이블
	
	private String userId;// 사용자 아이디
	private String userName; // 사용자 이름
	private String userPassword; //패스워드
	private java.sql.Date userBirth; //생년월일
	private java.sql.Timestamp creatTime;//생성시간
	private int userGender; //사용자 성별
	private String userEmail; // 이메일주소
	private String userEmailHash; // 이메일 인증코드
	private int userEmailCertified; //이메일 확인여부
	private int userAuthority; // 사용자 권한
	private int cash;//올룩꿀룩 머니
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
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public java.sql.Date getUserBirth() {
		return userBirth;
	}
	public void setUserBirth(java.sql.Date userBirth) {
		this.userBirth = userBirth;
	}
	public java.sql.Timestamp getCreatTime() {
		return creatTime;
	}
	public void setCreatTime(java.sql.Timestamp creatTime) {
		this.creatTime = creatTime;
	}
	public int getUserGender() {
		return userGender;
	}
	public void setUserGender(int userGender) {
		this.userGender = userGender;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserEmailHash() {
		return userEmailHash;
	}
	public void setUserEmailHash(String userEmailHash) {
		this.userEmailHash = userEmailHash;
	}
	public int getUserEmailCertified() {
		return userEmailCertified;
	}
	public void setUserEmailCertified(int userEmailCertified) {
		this.userEmailCertified = userEmailCertified;
	}
	public int getUserAuthority() {
		return userAuthority;
	}
	public void setUserAuthority(int userAuthority) {
		this.userAuthority = userAuthority;
	}
	public int getCash() {
		return cash;
	}
	public void setCash(int cash) {
		this.cash = cash;
	}
	
	
}
