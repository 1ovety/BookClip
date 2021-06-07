<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.member.model.vo.Member"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .outer{ 
        width: 1000px;
        margin: auto;
        margin-top: 50px;
    }
    #mypage-form table{margin: auto;}
    #mypage-form input{margin: 5px;}

</style>
</head>
<body>

	<%@ include file = "../common/menubarFin.jsp" %>
	
	<%
		String userId = loginUser.getUserId();
		String userName = loginUser.getUserName();
		String userEmail = loginUser.getUserEmail();
	%>
	

    <div class="outer">
 
        <br>
        <h2 align="center">마이페이지</h2>

		<br>
        <form action="" id="mypage-form" method="POST">

            <table>
                <tr>
                    <td>*아이디</td>
                    <td><input type="text" name="userId" maxlength="12" required readonly value="<%=userId%>"></td>
                </tr>
                <tr>
                    <td>*닉네임</td>
                    <td><input type="text" name="userName" maxlength="20" required readonly value="<%=userName%>"></td>
                </tr>
                <tr>
                    <td>*이메일</td>
                    <td><input type="email" name="userEmail" required readonly value="<%=userEmail%>"></td>
                </tr>
            
            </table>

            <br><br>
            <div align="center">
                <button type="button" class="btn btn-outline-secondary">이메일변경</button>
                <button type="button" class="btn btn-outline-secondary" data-toggle="modal" data-target="#updatePwdForm">비밀번호변경</button>
                <button type="button" class="btn btn-outline-danger" data-toggle="modal" data-target="#deleteForm">회원탈퇴</button>
            </div>

            <br><br>

        </form>
        
    </div>
    
    <!-- 회원탈퇴 -->
    <div class="modal" id="deleteForm">
  	<div class="modal-dialog">
    <div class="modal-content">

      <div class="modal-header" >
        <h4 class="modal-title">회원탈퇴</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <div class="modal-body" align="center">
        
        <b>탈퇴 후 복구가 불가능 합니다. <br>정말로 탈퇴 하시겠습니까?</b> <br><br>
        
        <form action="<%= contextPath %>/delete.me" method="post">
        
        	비밀번호 : <input type="password" name="userPwd" required> <br><br>
        	<button type ="submit" class="btn btn-outline-danger">회원탈퇴</button>"
        </form>
        
       </div>
        
       </div>
	  </div>
	</div>
    
        
    
    
    <!-- 비밀번호 변경 -->
    <div class="modal" id="updatePwdForm">
  	<div class="modal-dialog">
    <div class="modal-content">

      <div class="modal-header" >
        <h4 class="modal-title">비밀번호 변경</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <div class="modal-body" align="center">
        
        <!-- 현재비밀번호, 변경할비밀번호, 변경할비밀번호재입력 -->
        <form action="<%=contextPath %>/updatePwd.me" method="post">
       <input type="hidden" name="userId" value="<%=userId%>">
       <table>
       <tr>
       		<td>현재 비밀번호</td>
       		<td><input type="password" name="userPwd" required></td>
       </tr>
       <tr>
       		<td>변경할 비밀번호</td>
       		<td><input type="password" name="updatePwd" required></td>
       </tr>
       <tr>
       		<td>변경할 비밀번호 재입력</td>
       		<td><input type="password" name="checkPwd" required></td>
       </tr>
   
       </table>
        
        <br>
        
        <button type="submit" class="btn btn-outline-secondary" onclick="return validatePwd();">비밀번호변경</button> 
        </form>
        
        <script>
        	function validatePwd(){
        		if($("input[name=updatePwd]").val() != $("input[name=checkPwd]").val()){
        			alert("비밀번호가 일치하지 않습니다.");
        			return false;
        		}
        	}
        </script>
        
      </div>
    </div>
  </div>
</div>

</body>
</html>