package com.kh.common.model.vo;

import java.util.Date;

public class Notice {

	private int noticeNo;
	private String categoryNo;
	private Date noticeCreate;
	private String uuserName;
	private String noticeContent;
	private String noticeTitle;

	
	
	public Notice() {}



	public Notice(int noticeNo, String categoryNo, Date noticeCreate, String uuserName, String noticeContent,
			String noticeTitle) {
		super();
		this.noticeNo = noticeNo;
		this.categoryNo = categoryNo;
		this.noticeCreate = noticeCreate;
		this.uuserName = uuserName;
		this.noticeContent = noticeContent;
		this.noticeTitle = noticeTitle;
	}

	


	public Notice(int noticeNo, String categoryNo, String uuserName, String noticeTitle, Date noticeCreate) {
		super();
		this.noticeNo = noticeNo;
		this.categoryNo = categoryNo;
		this.noticeTitle = noticeTitle;
		this.uuserName = uuserName;
		this.noticeCreate = noticeCreate;

	}



	public int getNoticeNo() {
		return noticeNo;
	}



	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}



	public String getCategoryNo() {
		return categoryNo;
	}



	public void setCategoryNo(String categoryNo) {
		this.categoryNo = categoryNo;
	}



	public Date getNoticeCreate() {
		return noticeCreate;
	}



	public void setNoticeCreate(Date noticeCreate) {
		this.noticeCreate = noticeCreate;
	}



	public String getUuserName() {
		return uuserName;
	}



	public void setUuserName(String uuserName) {
		this.uuserName = uuserName;
	}



	public String getNoticeContent() {
		return noticeContent;
	}



	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}



	public String getNoticeTitle() {
		return noticeTitle;
	}



	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}



	@Override
	public String toString() {
		return "Notice [noticeNo=" + noticeNo + ", categoryNo=" + categoryNo + ", noticeCreate=" + noticeCreate
				+ ", uuserName=" + uuserName + ", noticeContent=" + noticeContent + ", noticeTitle=" + noticeTitle
				+ "]";
	}





}