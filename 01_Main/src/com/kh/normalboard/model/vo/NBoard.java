package com.kh.normalboard.model.vo;

import java.sql.Date;


public class NBoard  {

	private int boardNo;
	private String categoryNo;
	private int count;
	private Date createBoard;
	private String nBoardContent;
	private String nBoardTitle;
	private String userAdmin;
	private String userNom;

	public NBoard(int boardNo, String category, int count, Date createBoard, String nBoardContent, String nBoardTitle,
			String userAdmin, String userNo) {
		super();
		this.boardNo = boardNo;
		this.categoryNo = category;
		this.count = count;
		this.createBoard = createBoard;
		this.nBoardContent = nBoardContent;
		this.nBoardTitle = nBoardTitle;
		this.userAdmin = userAdmin;
		this.userNom = userNo;
	}

	
	
	public NBoard(String categoryNo, String nBoardContent, String nBoardTitle, String userNom) {
		super();
		this.categoryNo = categoryNo;
		this.nBoardTitle = nBoardTitle;
		this.nBoardContent = nBoardContent;
		this.userNom = userNom;
	}



	public NBoard(int boardNo, String category, int count, Date createBoard, String nBoardTitle, String userNo) {
		super();
		this.boardNo = boardNo;
		this.categoryNo = category;
		this.count = count;
		this.createBoard = createBoard;
		this.nBoardTitle = nBoardTitle;
		this.userNom = userNo;
	}
	



	public NBoard(int boardNo, String categoryNo, Date createBoard, String nBoardTitle, String userNom) {
		super();
		this.boardNo = boardNo;
		this.categoryNo = categoryNo;
		this.createBoard = createBoard;
		this.nBoardTitle = nBoardTitle;
		this.userNom = userNom;
	}



	public NBoard() {
		// TODO Auto-generated constructor stub
	}



	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public String getcategory() {
		return categoryNo;
	}

	public void setcategory(String category) {
		this.categoryNo = category;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public Date getCreateBoard() {
		return createBoard;
	}

	public void setCreateBoard(Date createBoard) {
		this.createBoard = createBoard;
	}

	public String getnBoardContent() {
		return nBoardContent;
	}

	public void setnBoardContent(String nBoardContent) {
		this.nBoardContent = nBoardContent;
	}

	public String getnBoardTitle() {
		return nBoardTitle;
	}

	public void setnBoardTitle(String nBoardTitle) {
		this.nBoardTitle = nBoardTitle;
	}

	public String getUserAdmin() {
		return userAdmin;
	}

	public void setUserAdmin(String userAdmin) {
		this.userAdmin = userAdmin;
	}

	public String getUserNo() {
		return userNom;
	}

	public void setUserNo(String userNo) {
		this.userNom = userNo;
	}

	@Override
	public String toString() {
		return "NBoard [boardNo=" + boardNo + ", category=" + categoryNo + ", count=" + count + ", createBoard="
				+ createBoard + ", nBoardContent=" + nBoardContent + ", nBoardTitle=" + nBoardTitle + ", userAdmin="
				+ userAdmin + ", userNo=" + userNom + "]";
	}
	
	

}
