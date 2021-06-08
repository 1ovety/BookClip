package com.kh.normalboard.model.dao;

import static com.kh.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.common.model.vo.Attachment;
import com.kh.common.model.vo.Category;
import com.kh.common.model.vo.PageInfo;
import com.kh.normalboard.model.vo.NBoard; 

	public class NBoardDao {

	private Properties prop = new Properties();
		
		public NBoardDao() {
			try {
				prop.loadFromXML(new FileInputStream(NBoardDao.class.getResource("/sql/normalboard/nbloard-mapper.xml").getPath()));
				
				
			} catch (IOException e) {
				e.printStackTrace();
			}
		
			
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
		
		public ArrayList<NBoard> selectList(Connection conn, PageInfo pi){
			ArrayList<NBoard> list = new ArrayList<>();
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			String sql = prop.getProperty("selectList");
			
			try {
				pstmt = conn.prepareStatement(sql);
				
				int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
				int endRow = startRow + pi.getBoardLimit() - 1;
				
				pstmt.setInt(1, startRow);
				pstmt.setInt(2, endRow);
				
				rset = pstmt.executeQuery();
				
				while(rset.next()) {
					list.add(new NBoard(rset.getInt("board_no"),
									   rset.getString("category_name"),
									   rset.getInt("count"),
									   rset.getDate("create_board"),
									   rset.getString("nboard_title"),
									   rset.getString("user_name")));
				}
			
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rset);
				close(pstmt);
			}
			
			return list;	
		}
		
			public ArrayList<Category> selectCategoryList(Connection conn){
				ArrayList<Category> nlist = new ArrayList<>();
				PreparedStatement pstmt = null;
				ResultSet rset = null;
				String sql = prop.getProperty("selectCategoryList");
			
				try {
					pstmt = conn.prepareStatement(sql);
					rset = pstmt.executeQuery();
					
					while (rset.next()) {
						nlist.add(new Category(rset.getInt("category_no"),
											   rset.getString("category_name")));
					}
							
					
				} catch (SQLException e) {

					e.printStackTrace();
				} finally {
					close(rset);
					close(pstmt);
					
				}
				 return nlist ;
			}
		
			public int insertBoard(Connection conn, NBoard n) {
				int result = 0;
				PreparedStatement pstmt = null;
				String sql = prop.getProperty("insertBoard");
				
				try {
					pstmt = conn.prepareStatement(sql);
					pstmt.setInt(1, Integer.parseInt(n.getcategory()));
					pstmt.setString(2, n.getnBoardTitle());
					pstmt.setString(3, n.getnBoardContent());
					pstmt.setInt(4, Integer.parseInt(n.getUserNo()));
					
					result = pstmt.executeUpdate();
					
				} catch (SQLException e) {
					e.printStackTrace();
				} finally {
					close (pstmt);
				}
				
				return result;
				
				
			}
			
			public int insertAttachment(Connection conn, Attachment at) {
				
				int result = 0;
				PreparedStatement pstmt = null;
				String sql = prop.getProperty("insertAttachment");
				
				try {
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, at.getOriginName());
					pstmt.setString(2, at.getChangeName());
					pstmt.setString(3, at.getFilePath());
					
					result = pstmt.executeUpdate();
					
					} catch (SQLException e) {
					e.printStackTrace();
					} finally {
					   close(pstmt);
					}
				 
					return result;
				
				}
			
}
