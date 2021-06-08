package com.kh.common.model.vo;

import java.util.Date;

public class Attachment {

	private int fileNo;
	private int fefBno;
	private String originName;
	private String changeName;
	private Date uploadDate;
	private int fileLevel;
	private String filePath;
	private String status;
	
	public Attachment() {}
	
	public Attachment(int fileNo, int fefBno, String originName, String changeName, Date uploadDate, int fileLevel,
			String filePath, String status) {
		super();
		this.fileNo = fileNo;
		this.fefBno = fefBno;
		this.originName = originName;
		this.changeName = changeName;
		this.uploadDate = uploadDate;
		this.fileLevel = fileLevel;
		this.filePath = filePath;
		this.status = status;
	}

	public int getFileNo() {
		return fileNo;
	}

	public void setFileNo(int fileNo) {
		this.fileNo = fileNo;
	}

	public int getFefBno() {
		return fefBno;
	}

	public void setFefBno(int fefBno) {
		this.fefBno = fefBno;
	}

	public String getOriginName() {
		return originName;
	}

	public void setOriginName(String originName) {
		this.originName = originName;
	}

	public String getChangeName() {
		return changeName;
	}

	public void setChangeName(String changeName) {
		this.changeName = changeName;
	}

	public Date getUploadDate() {
		return uploadDate;
	}

	public void setUploadDate(Date uploadDate) {
		this.uploadDate = uploadDate;
	}

	public int getFileLevel() {
		return fileLevel;
	}

	public void setFileLevel(int fileLevel) {
		this.fileLevel = fileLevel;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Attachment [fileNo=" + fileNo + ", fefBno=" + fefBno + ", originName=" + originName + ", changeName="
				+ changeName + ", uploadDate=" + uploadDate + ", fileLevel=" + fileLevel + ", filePath=" + filePath
				+ ", status=" + status + "]";
	} 

	
}
