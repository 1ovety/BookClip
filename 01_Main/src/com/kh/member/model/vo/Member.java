package com.kh.member.model.vo;

public class Member {

	private int userNo;
	private String userId;
	private String userName;
	private String userPwd;
	private String userEmail;
	private String userAdmin;

	public Member() {}
	
	public Member(int userNo, String userId, String userName, String userPwd, String userEmail, String userAdmin) {
		super();
		this.userNo = userNo;
		this.userId = userId;
		this.userName = userName;
		this.userPwd = userPwd;
		this.userEmail = userEmail;
		this.userAdmin = userAdmin;
	}
	
	
	
	public Member(String userId, String userName, String userPwd, String userEmail) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userPwd = userPwd;
		this.userEmail = userEmail;
	}

	public Member(String userId, String userPwd) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
	}

	public int getUserNo() {
		return userNo;
	}
	
	public void setUserNo(int userNo) {
		this.userNo = userNo;
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
	
	public String getUserPwd() {
		return userPwd;
	}
	
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	
	public String getUserEmail() {
		return userEmail;
	}
	
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	
	public String getUserAdmin() {
		return userAdmin;
	}
	
	public void setUserAdmin(String userAdmin) {
		this.userAdmin = userAdmin;
	}
	
	@Override
	public String toString() {
		return "Member [userNo=" + userNo + ", userId=" + userId + ", userName=" + userName + ", userPwd=" + userPwd
				+ ", userEmail=" + userEmail + ", userAdmin=" + userAdmin + "]";
	}

	}

