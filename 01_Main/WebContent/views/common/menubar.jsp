<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.member.model.vo.Member"%>
<%
	//System.out.println(request.getContextPath());
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
    .corp_info1 {
    clear: both;
    width: 930px;
    margin: 0 auto;
    padding: 20px 0;
    text-align: center;
	background: rgb(248, 247, 247);
	font-size: 12px;
	}
	ul, li {
    margin: 0px;
    margin-top: 0px;
    margin-right: 0px;
    margin-bottom: 0px;
    margin-left: 0px;
    padding: 0px;
    padding-top: 0px;
    padding-right: 0px;
    padding-bottom: 0px;
    padding-left: 0px;
    list-style: none;
    list-style-position: initial;
    list-style-image: initial;
    list-style-type: none;

}
	#newbook{
		  
  		   margin-top: 30px;
  			margin-bottom: 30px;
  			margin-right: 350px;
  			margin-left: 350px;
	}
	#newbook a{
		margin: 10px
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
 	
 	<!-- ???????????? -->
    <div class="login-area">
    
      	<% if(loginUser == null) {%>
		        <form id="login-form" action="<%= request.getContextPath() %>/login.me" method="post">
		            <table>
		                <tr>
		                    <th>?????????:</th>
		                    <td><input type="text" name="userId" required></td>
		                </tr>
		                <tr>
		                    <th>????????????: </th>
		                    <td><input type="password" name="userPwd" required></td>
		                </tr>
		                <tr>
		                    <th colspan="2">
		                        <button type="submit" class="btn btn-outline-primary" >?????????</button>
		                        <button type="button" class="btn btn-outline-secondary" onclick="enrollPage();">????????????</button>
		                        <br>
		                        <a href="">???????????????</a>
		                        <a href="">??????????????????</a>
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
	            <a href="<%= contextPath %>/myPage.me" data-toggle="popover" title="???????????????" data-content="?????????????????? ??? ??????"><b><%= loginUser.getUserName() %></b>???</a>
	            <a href="<%= contextPath %>/bookList.me">???????????????</a>
	            <a href="<%= contextPath %>/logout.me">????????????</a>
	        
	        </div> 
      <% } %>
        
    

    </div>
	
    <br clear="both">
    <br>

   		<!-- ????????? -->
        <nav class="navbar navbar-expand-sm bg-light justify-content-center">

            <ul class="navbar-nav">
                <li class="nav-item">
                <a class="nav-link" href="#">???????????????</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="<%= contextPath%>/list.bo?currentPage=1">???????????????</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="<%= contextPath %>/notice.me">????????????</a>
              </li>
            </ul>
          
            
          </nav>
          
          <br><br>
          
		<!-- ????????????????????? -->
		<div id="banner" class="carousel slide" data-ride="carousel" align="center">
		
		
		  <ul class="carousel-indicators">
		    <li data-target="#banner" data-slide-to="0" class="active"></li>
		    <li data-target="#banner" data-slide-to="1"></li>
		   
		  </ul>
		

		  <div class="carousel-inner">
		    <div class="carousel-item active" >
		      <a href="https://www.aladin.co.kr/shop/wbrowse.aspx?CID=181771">
		      <img src="resources/??????1.jpg" alt="Event1"></a>
		    </div>
		    <div class="carousel-item">
		      <a href="https://www.aladin.co.kr/home/wonlymain.aspx">
		      <img src="resources/??????2.jpg" alt="Event2"></a>
		    </div>
		  </div>
		
	
		  <a class="carousel-control-prev" href="#banner" data-slide="prev">
		    <span class="carousel-control-prev-icon"></span>
		  </a>
		  <a class="carousel-control-next" href="#banner" data-slide="next">
		    <span class="carousel-control-next-icon"></span>
		  </a>
		
		</div>
		
		<br> <br>
		<div id="new-book" align="center">
			<b>??? ?????? ??????</b>
		<div id="newbook">
		      <a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=272354602">
		      <img src="resources/????????????1.jpg" width="240" height="260"></a>
		  
		      <a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=272252933">
		      <img src="resources/????????????2.jpg" width="240" height="260"></a>
		      
		       <a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=271352572">
		      <img src="resources/????????????3.jpg" width="240" height="260" ></a>
		    </div>
		  </div>
		    
		<br><br>
		
		<div id="recommand-book" align="center">
			<b>??? ?????? ?????????</b>
		<div id="newbook">
		      <a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=272903818">
		      <img src="resources/???????????????1.jpg" width="240" height="260"></a>
		  
		      <a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=272902654">
		      <img src="resources/???????????????2.jpg" width="240" height="260"></a>
		      
		       <a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=272901503">
		      <img src="resources/???????????????3.jpg" width="240" height="260" ></a>
		    </div>
		  </div>
		<br><br><br><br>
		
		<!-- ?????? ????????? -->
		<div class="corp_info1" align="center">
        <h5>(???)?????????</h5>
        <ul class="info_contact">
            <li>???????????? : ?????????  / ?????????????????? ????????? : ?????????</li>
            <li>FAX : 012-215-5689 / E-mail : admin@bookclip.com</li>
            <li>??????????????? : <a href="javascript:fn_ftc_check();" class="footer_blue">201-81-23094</a> / ????????????????????? : ??????215468???</li>
            <li style="clear:left; width:100%">????????? ????????? : ????????? / (??????) ????????? ?????? ???????????? 26 </li>
	    <li style="clear:left; width:100%">(????????????) ????????? ????????? ????????? 71 ???????????? 7???, Fax 012-215-5689</li>
        </ul>
        <div class="info_copyright">??? Bookclip Communication. All Rights Reserved.</div>
    </div>
</body>
</html>