package com.kh.common.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.common.model.vo.Category;
import com.kh.common.model.vo.Notice;



import static com.kh.common.JDBCTemplate.*; 

	public class NoticeDao {

	private Properties prop = new Properties();
		
		public NoticeDao() {
			try {
				prop.loadFromXML(new FileInputStream(NoticeDao.class.getResource("/sql/notice/notice-mapper.xml").getPath()));
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
			public ArrayList<Notice> selectNoticeList(Connection conn){
				ArrayList<Notice> list = new ArrayList<>();
				PreparedStatement pstmt = null;
				ResultSet rset = null;
				String sql = prop.getProperty("selectNoticeList");
				
				try {
					pstmt = conn.prepareStatement(sql);
					rset = pstmt.executeQuery();
					
					while(rset.next()) {
						list.add(new Notice(rset.getInt("notice_no"),
										   rset.getString("notice_category"),
										   rset.getString("notice_title"),
										   rset.getString("uuser_name"),
										   rset.getDate("notice_create")));
										   
					}
				
				} catch (SQLException e) {
					e.printStackTrace();
				} finally {
					close(rset);
					close(pstmt);
				}
				
				return list;	
			
			
		}
		
		public int selectListCount(Connection conn) {
			
			int listCount = 0;
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			String sql = prop.getProperty("selectListCount");
			
			try {
				pstmt = conn.prepareStatement(sql);
				rset = pstmt.executeQuery();
				
				if(rset.next()) {
					listCount = rset.getInt("count");
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rset);
				close(pstmt);
			}
			
			return listCount;
			
		}
		
		
		
			public ArrayList<Category> selectCategoryNotice(Connection conn){
				ArrayList<Category> list = new ArrayList<>();
				PreparedStatement pstmt = null;
				ResultSet rset = null;
				String sql = prop.getProperty("selectCategoryNotice");
			
				try {
					pstmt = conn.prepareStatement(sql);
					rset = pstmt.executeQuery();
					
					while (rset.next()) {
						list.add(new Category(rset.getInt("category_no"),
											   rset.getString("category_name")));
					}
							
					
				} catch (SQLException e) {

					e.printStackTrace();
				} finally {
					close(rset);
					close(pstmt);
					
				}
				 return list ;
			}
		
}
