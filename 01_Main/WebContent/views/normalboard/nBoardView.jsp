<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kh.common.model.vo.PageInfo, java.util.ArrayList, com.kh.normalboard.model.vo.NBoard" %>
<% 
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<NBoard> list = (ArrayList<NBoard>)request.getAttribute("list");
	
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
	.table{
	width: 50%;
	align-content: center;
	}
	.table>tbody>tr:hover{
		background: rgb(207, 206, 206);
		cursor: pointer;
	}
	.table{
	width: 50%;
	align-content: center;
</style>
</head>
<body>


	<%@ include file="../common/menubarFin.jsp" %>
	
	<div class="outer">

		<br><br><br>
		<h2 align="center"><b>일반게시판</b></h2>
		<br>

		<!-- 로그인한 회원 -->
		<% if(loginUser !=null) {%>
		<div align="right">
		 	<a href = "<%= contextPath %>/enrollForm.bo" class="btn btn-outline-primary">글작성</a>
		 	<br><br>
		 </div>
		<% } %>
		
		
		
		<!-- 자유게시판 -->
		<table class="table" align="center">
			<thead align="center">
				<tr>
					<th width="70">글번호</th>
					<th width="70">카테고리</th>
					<th width="300">제목</th>
					<th width="100">작성자</th>
					<th width="50">조회수</th>
					<th width="100">작성일</th>
				</tr>
			</thead>
			

			<tbody align="center">
						
			<% if(list.isEmpty()) {%>
				<tr>
					<td clospan"6">조회된 리스트가 없습니다.</td>
				</tr>
			<% }else { %>
				<% for(NBoard b : list) { %>
				<tr>
					<td><%= b.getBoardNo() %></td>
					<td><%= b.getcategory() %></td>
					<td><%= b.getnBoardTitle() %></td>
					<td><%= b.getUserNo() %></td>
					<td><%= b.getCount() %></td>
					<td><%= b.getCreateBoard() %></td>
				</tr>
				<% } %>
			  <% } %>
			</tbody>
		</table>

		<br><br>

		<div align="center" class="paging-area">
			
			<% if (currentPage != 1 ){ %>
			<button onclick="location.href='<%=contextPath %>/list.bo?currentPage=<%=currentPage-1%>';">이전</button>
			<% } %>
			
			<% for(int p=startPage; p<=endPage; p++) {%>			

				<% if(p != currentPage) {%>
					<button onclick="location.href='<%=contextPath%>/list.bo?currentPage=<%= p%>';"><%=p %></button>
				<% }else { %>
					<button disabled> <%= p %></button>
				
				<% } %>
			<%} %>
			
			<% if (currentPage != endPage ){ %>
			<button onclick="location.href='<%=contextPath %>/list.bo?currentPage=<%=currentPage+1%>';">다음</button>
			<% } %>
		
		</div>
		
		<br><br><br>
	</div>


</body>
</html>