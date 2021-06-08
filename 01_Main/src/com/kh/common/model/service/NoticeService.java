package com.kh.common.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.common.model.dao.NoticeDao;
import com.kh.common.model.vo.Category;
import com.kh.common.model.vo.Notice;



public class NoticeService{
	
	public ArrayList<Notice> selectNoticeList(){
		
		Connection conn = getConnection();
		ArrayList<Notice> list = new NoticeDao().selectNoticeList(conn);
	
		close(conn);
		return list;
		
	}

	public int selectListCount() {
		
		Connection conn = getConnection();
		int listCount = new NoticeDao().selectListCount(conn);
		
		close(conn);
		return listCount;
		
	}


	public ArrayList<Category> selectCategoryList(){
		Connection conn = getConnection();
		ArrayList<Category> clist = new NoticeDao().selectCategoryList(conn);
		close(conn);
		return clist;
	}
	

}
