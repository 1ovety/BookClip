package com.kh.normalboard.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.common.model.vo.Attachment;
import com.kh.common.model.vo.Category;
import com.kh.common.model.vo.PageInfo;
import com.kh.normalboard.model.dao.NBoardDao;
import com.kh.normalboard.model.vo.NBoard;

public class NBoardService {

	public int selectListCount() {
		
		Connection conn = getConnection();
		int listCount = new NBoardDao().selectListCount(conn);
		
		close(conn);
		return listCount;
		
	}
	
	public ArrayList<NBoard> selectList(PageInfo pi){
		Connection conn = getConnection();
		ArrayList<NBoard> list = new NBoardDao().selectList(conn, pi);
		close(conn);
		return list;
	}
	
	public ArrayList<Category> selectCategoryList(){
		Connection conn = getConnection();
		ArrayList<Category> list = new NBoardDao().selectCategoryList(conn);
		close(conn);
		return list;
	}
	
	
	public int insertBoard(NBoard b, Attachment at ) {
		Connection conn = getConnection();
		int result1 = new NBoardDao().insertBoard(conn, b);
		
		int result2 = 1;
		if(at != null) {
			result2 = new NBoardDao().insertAttachment(conn, at);
		}

		if(result1 > 0 && result2 > 0) {
			commit(conn);
		}else {
			rollback(conn);
			
		}
			close(conn);
			
			return result1 * result2;
		}

}
