<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.common.model.vo.Category"%>
<%
	ArrayList<Category> list = (ArrayList<Category>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 
 .outer{
		color: black;
	}
	#enroll-form>table{
  border: 1px solid black;
 }
 #enroll-form input, #enroll-form textarea{
		width: 100%;
		box-sizing: border-box;
		
</style>
</head>
<body>


	<%@ include file="../common/menubarFin.jsp" %>
	
	<div class="outer">
		<br><h2 align="center">자유게시판</h2>

		<form action="" id="enroll-form" method="post">

			<table id="normalb" align="center">
				<tr>
					<td width="70">카테고리</td>
					<td width="500">
						<select id="category" name="category" >
							<% for( Category c : list ) { %>
							<option value="<%=c.getCategoryNo()%>"><%= c.getCategoryName() %></option>
							<% }  %>
						</select>
					</td>
				</tr>
				<tr>
					
					<td>제목</td>
					<td><input type="text" name="title" required></td>
				</tr>
				<tr>
					
					<td>내용</td>
					<td>
						<textarea name="content" rows="10" required></textarea>
					</td>
				</tr>
				<tr>
					<br>
					<td>첨부파일</td>
					<td><input type="file" name="upfile"></td>
				</tr>
			</table>

			<br>
			<div align="center">
				<button type="submit" class="btn btn-outline-info">작성하기</button>
				<button type="reset" class="btn btn-outline-danger">취소하기</button>
			</div>
			<br><br>


		</form>
	</div>

</body>
</html>