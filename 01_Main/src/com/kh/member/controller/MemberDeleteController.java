package com.kh.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.member.model.service.MemberService;
import com.kh.member.model.vo.Member;


/**
 * Servlet implementation class MemberDeleteController
 */
@WebServlet("/delete.me")
public class MemberDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberDeleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String userPwd = request.getParameter("userPwd");
		
		
		HttpSession session = request.getSession();
		String userId = ((Member)session.getAttribute("loginUser")).getUserId();
		
		int result = new MemberService().deleteMember(userId, userPwd);
		
		if(result > 0) { 
			
			session.setAttribute("alertMsg", "회원탈퇴 성공.");
			session.removeAttribute("loginUser");
			
			response.sendRedirect(request.getContextPath());
			
		}else { 
			
			session.setAttribute("alertMsg", "회원탈퇴 실패");
			response.sendRedirect(request.getContextPath());

			
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
