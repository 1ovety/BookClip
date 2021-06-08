<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.common.model.vo.Notice, com.kh.common.model.vo.Category" %>

<%
	ArrayList<Notice> list = (ArrayList<Notice>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<script src="resources/js/jquery-3.6.0.min.js"></script>
<style>
	#qna{
		background: rgb(104, 119, 114);
		width: 600px;
		height: 30px;
		color: white;
		text-align: center;
		line-height: 30px;
		border-radius: 10px;
		border: 1px solid black;
		cursor: pointer;
	}
	p{
		border: 1px solid lightgrey;
		width: 600px;
		height: 100px;
		margin-top: 5px;
		border-radius: 10px;
		padding: 10px;
		box-sizing: border-box;
		display: none;
	}
	.outer{
		color: black;
	}
	#enroll-form>table{
	border: 1px solid black;
 	}
 	#enroll-form input, #enroll-form textarea{
	width: 100%;
	box-sizing: border-box;
 	}
 	.table>tbody>tr:hover{
 	 	border: 1px solid black;
		background: rgb(207, 206, 206);
		cursor: pointer;
		width: 100%;
		box-sizing: border-box;
	}
	.outer{
		width: 600px;
		height: 300px;
	}
	#list-area{
		border: 1px solid black;
	}

</style>
</head>
<body>


	<%@ include file="../common/menubarFin.jsp" %>

<br><br>
<h2 align="center"> Q & A </h2>
<br><br>
<div class="question" align="center"> 
<div id="qna">Q. 닉네임은 어떻게 변경하나요?</div>
<p>A. 현재 아이디와 닉네임은 변경 서비스를 제공하지 않습니다.</p>

<div id="qna">Q. 회원정보를 변경하고 싶습니다.</div>
<p>A. 오른쪽 상단에 닉네임을 클릭하셔서 마이페이지에 접속하시면 정보수정버튼을 확인하실 수 있습니다.</p>

<div id="qna">Q. 회원탈퇴하고 싶습니다.</div>
<p>A. 오른쪽 상단에 닉네임을 클릭하셔서 마이페이지에 접속하시면 탈퇴버튼을 확인하실 수 있습니다.</p>

<div id="qna">Q. 전화문의 가능한 시간을 알려주세요</div>
<p>A. 전화문의는 오전 10시부터 오후 4시까지 가능하며 온라인 문의는 오전 9시부터 6시까지 답변을 확인하실 수 있습니다.</p>

<div id="qna">Q. 신고는 어떻게 하나요?</div>
<p>A. 로그인 후 아래 1:1문의에 신고하시는 이유와 사진을 함께 올려주시면 확인 후 진행해드립니다.</p>

<div id="qna">Q. 1:1 문의는 어떻게 하나요?</div>
<p>A. 로그인 후 고객센터 하단의 내용을 작성하시고 등록하기를 눌러주시면 됩니다.</p>

<script>
	$(function(){
		$("div").click(function(){

			var $p = $(this).next();

			if($p.css("display") == "none" ){
				$(this).siblings("p").slideUp();
				$p.slideDown();                   
			}else{
				$p.slideUp();
			}

		})
	})
</script>

	<!-- 로그인한 회원 -->
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
						<td><%= n.getCategoryNo() %></td>
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
 </div>
</body>
</html>