package com.kh.normalboard.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.common.MyFileRenamePolicy;
import com.kh.common.model.vo.Attachment;
import com.kh.normalboard.model.service.NBoardService;
import com.kh.normalboard.model.vo.NBoard;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class BoardInsertConteroller
 */
@WebServlet("/insert.bo")
public class BoardInsertConteroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardInsertConteroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		if(ServletFileUpload.isMultipartContent(request)) {
		
			int maxSize = 10*1024*1024;
			
			String savePath = request.getSession().getServletContext().getRealPath("/resources/board_upfiles/");
			
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8",  new MyFileRenamePolicy());	
			
			String categoryNo = multiRequest.getParameter("category");
			String nBoardTitle = multiRequest.getParameter("title");
			String nBoardContent = multiRequest.getParameter("content");
			String userNom = multiRequest.getParameter("userNo");

			NBoard n = new NBoard();
			n.setcategory(categoryNo);
			n.setnBoardTitle(nBoardTitle);
			n.setnBoardContent(nBoardContent);
			n.setUserNo(userNom);
			
			Attachment at = null;
			
			if(multiRequest.getOriginalFileName("upfile") != null) {
				
				at = new Attachment();
				at.setOriginName(multiRequest.getOriginalFileName("upfile"));
				at.setChangeName(multiRequest.getFilesystemName("upfile"));
				at.setFilePath("resources/board_upfiles/");
			}
			
			int result = new NBoardService().insertBoard(n, at);
			
			if(result > 0) {
				
				request.getSession().setAttribute("alertMsg", "게시글 작성 성공" );
				response.sendRedirect(request.getContextPath() + "/list.bo?currentPage=1");
				
				
			}else {
				if(at != null ) {
				new File(savePath + at.getChangeName()).delete();
				}
				
				request.setAttribute("errorMsg", "게시글 작성 실패");
				request.getRequestDispatcher("views/common/errorPage.jsp");
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
