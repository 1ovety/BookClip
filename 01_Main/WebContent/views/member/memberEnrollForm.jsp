<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    #enroll-form table{margin: auto;}
    #enroll-form input{margin: 5px;}

</style>
</head>
<body>


	<%@ include file="../common/menubarFin.jsp" %>
	
	
    <div class="outer">
 
        <br>
        <h2 align="center">회원가입</h2>

		<br>
        <form action="<%= contextPath %>/insert.me" id="enroll-form" method="POST">

            <table>
                <tr>
                    <td>*아이디</td>
                    <td><input type="text" name="userId" maxlength="12" required></td>
                    <td><button type="button" class="btn btn-outline-dark">중복확인</button></td>
                </tr>
                <tr>
                    <td>*닉네임</td>
                    <td><input type="text" name="userName" maxlength="20" required></td>
                    <td><button type="button" class="btn btn-outline-dark">중복확인</button></td>
                </tr>
                <tr>
                    <td>*비밀번호</td>
                    <td><input type="password" name="userPwd" maxlength="15" required></td>
                    <td></td>
                </tr>
                <tr>
                    <td>*비밀번호확인</td>
                    <td><input type="password" maxlength="15" required></td>
                    <td></td>
                </tr>
                <tr>
                    <td>*이메일</td>
                    <td><input type="email" name="userEmail" required></td>
                    <td><button type="button" class="btn btn-outline-dark">중복확인</button></td>
                </tr>
            
            </table>

            <br><br>
            <div align="center">
                <button type="submit" class="btn btn-outline-secondary">회원가입</button>
                <button type="reset" class="btn btn-outline-danger">초기화</button>
            </div>

            <br><br>

        </form>
    </div>
</body>
</html>