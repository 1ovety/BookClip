<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.member.model.vo.Member"%>
<%
	String contextPath = request.getContextPath();

	Member loginUser = (Member)session.getAttribute("loginUser");
	
	String alertMsg = (String)session.getAttribute("alertMsg");
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Limelight&display=swap" rel="stylesheet">
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    #login-form, #user-info{float:right}
    #user-info a{
        text-decoration: none;
        color: black;
        font-size:15px;
    }
    #login-form a{
        color: black;
        font-size:13px;
    }
    .nav-item a{
        color: black;
        font-weight: bold;
        display: block;
        width: 100%;
        height: 100%;
    }
    .nav-item a:hover{
        background: darkgray;
    }
    .main-area a{
    	text-decoration: none;
        color: black;
        font-size:40px;
		font-family:limelight;
    }
    #banner{
    	background:lightgrey;
    }
</style>
</head>
<body>

	<script>
	
		var msg = "<%= alertMsg %>";
		
		if(msg != "null"){
			alert(msg);
			<% session.removeAttribute("alertMsg"); %>
		}
	
	</script>
	<div class="main-area" align="center">
    <a href="<%= contextPath %>">BookClip</a>
 	</div>
 	
 	<!-- 로그인창 -->
    <div class="login-area">
    
      	<% if(loginUser == null) {%>
		        <form id="login-form" action="<%= request.getContextPath() %>/login.me" method="post">
		            <table>
		                <tr>
		                    <th>아이디:</th>
		                    <td><input type="text" name="userId" required></td>
		                </tr>
		                <tr>
		                    <th>비밀번호: </th>
		                    <td><input type="password" name="userPwd" required></td>
		                </tr>
		                <tr>
		                    <th colspan="2">
		                        <button type="submit" class="btn btn-outline-primary" >로그인</button>
		                        <button type="button" class="btn btn-outline-secondary" onclick="enrollPage();">회원가입</button>
		                        <br>
		                        <a href="">아이디찾기</a>
		                        <a href="">비밀번호찾기</a>
		                    </th>
		                </tr>
		                
		            </table>
		
		
		        </form>
		        <script>
		        	function enrollPage(){
		        		location.href = "<%=contextPath%>/enrollForm.me";
		        	}
		        </script>
   	<% }else { %>
     
	        <div id="user-info">
	            <a href="<%= contextPath %>/myPage.me" data-toggle="popover" title="마이페이지" data-content="회원정보수정 및 확인"><b><%= loginUser.getUserName() %></b>님</a>
	            <a href="<%= contextPath %>/bookList.me">독서리스트</a>
	            <a href="<%= contextPath %>/logout.me">로그아웃</a>
	        
	        </div>  
      <% } %>
        
    

    </div>
	
    <br clear="both">
    <br>

   		<!-- 메뉴판 -->
        <nav class="navbar navbar-expand-sm bg-light justify-content-center">

            <ul class="navbar-nav">
                <li class="nav-item">
                <a class="nav-link" href="#">도서게시판</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="<%= contextPath%>/list.bo?currentPage=1">자유게시판</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="<%= contextPath %>/notice.me">고객센터</a>
              </li>
            </ul>
          
            
          </nav>
          
       
	

</body>
</html>