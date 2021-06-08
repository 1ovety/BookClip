<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.common.model.vo.Notice, com.kh.common.model.vo.Category"%>
<%
	ArrayList<Category> clist = (ArrayList<Category>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%@ include file="../member/noticeBoard.jsp" %>

	<% if(loginUser !=null) {%>
		<div class="outer">
		
			<br><br><br>
			<h2 align="center"><b>1:1 문의</b></h2>
			<br>
			<div align="right" >
			 <a href = "<%= contextPath %>/qnawrite.me" class="btn btn-outline-primary">글작성</a>
		 	</div>
			<br>
		
			
			<table id="list-area" align="center">
					<thead align="center">
						<tr>
							<th width="80">글번호</th>
							<th width="100">카테고리</th>
							<th width="500">제목</th>
							<th width="100">작성자</th>
							<th width="100">작성일</th>
						</tr>
					</thead>
			
					<tbody align="center">
					<% if(list.isEmpty()) { %>
						<tr>
							<td colspan="5"> 문의하신 내용이 없습니다.</td>
						</tr>
					<%} else { %>
						<% for (Notice n : list) { %>
						<tr>
							<td><%= n.getNoticeNo() %></td>
							<td><%= n.getNoticeCategory() %>신고</td>
							<td><%= n.getNoticeTitle() %></td>
							<td><%= n.getUuserName() %></td>
							<td><%= n.getNoticeCreate() %></td>
						</tr>
						<% } %>
					<% } %>
				
					</tbody>
				
				</table>
				
				<%} %>
		</div>

</body>
</html>