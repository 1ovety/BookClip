<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 
 	.noticeouter{
	color: black;
	align-content: center;

 
	}
	#enroll-form>table{
 	border: 1px solid black;
 	

 	}
 	#enroll-form input, #enroll-form textarea{
	width: 100%;
	box-sizing: border-box;

	}

	
</style>
</head>
<body>

	
	<%@ include file="../member/noticeBoard.jsp" %>
	
	<div class="noticeouter" align="center">

	<form action="" id="enroll-form" method="post">

		<table align="center">
			<tr>
				<td>문의종류</td>
				<td width="500">
					<select name="category" >
						<option value="110">신고</option>
						<option value="120">회원정보</option>
						<option value="130">이용방법</option>
						<option value="40">건의</option>
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
					<td>첨부파일</td>
					<td><input type="file" name="upfile"></td>
				</tr>
			</table>
			
			<br>
			<div align="center">
				<button type="submit" class="btn btn-outline-info">등록하기</button>
				<button type="reset" class="btn btn-outline-danger">취소하기</button>
				
				</div>
				<br>
			</form>
			
				
		</div>

		
		


			


	

</body>
</html>