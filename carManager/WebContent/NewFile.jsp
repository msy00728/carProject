<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

header{
width:100%;
height:15%;
}
nav{
background-color:cyan;
width:100%;
height:5%;
padding-top: 30px;
padding-left: 30px;
}
section{
    width: 80%;
     height: 70%;
     float:left;
    

}
aside{
width:20%;
height:70%;
float:left;
text-align:center;
}
footer{
width:100%;
height:10%;
background-color:gray;
clear:both;
}                
ul{
list-style:none;
}
ul li{
display:inline;
}
ul li a{
text-decoration:none;
font-weight:bold;
color:black;
padding:0 20px;
}
html,body{
                width: 100%;
                height: 100%;
               } 
*{
                padding: 0;
                margin: 0;
            }
#h1{
            color:blue;
             float:left;
             padding-top:30px;
             font-size:45px;
            }
#div1{
padding-top:50px;
            float:right;
            }
</style>
</head>
<body>
<header>
<%String checkName="";
checkName=(String)session.getAttribute("s_Name");
if(checkName==null){
	

%>
<h1 id="h1"><a href="NewFile.jsp">카센터(붕붕이 나라)</h1></a>
<div id="div1">
<form name="a" method="post" action="login.jsp">
회원ID:<input type="text" name="id"> 
비밀번호:<input type="password" name="password">
<input type="submit"value="로그인">
<a href="car.jsp">회원가입</a></form>
</div>
<%} else{session.setMaxInactiveInterval(500); %>
<a href="NewFile.jsp">카센터(붕붕이 나라)</a>
<span calss="right" style="padding: 30px 10px;">
<%=checkName %>님 환영합니다.
<a href="logout.jsp">logout</a>
<a href="member_form.jsp">회원가입</a>
</span>
<%} %>
</header>
<nav>
<ul>
<li><a href="#">회사소개</a></li>
<li><a href="car5.jsp">부품정보</a></li>
<li><a href="car2.jsp">고객정보</a></li>
<li><a href="#">견적관리</a></li>
<li><a href="#">정비이력</a></li>
<li><a href="#">게시판</a></li>
</ul>
</nav>
<section>
<img src="image/logo.jpg" width=100% height=100%>
</section>
<aside>
<input type="button" value="고객등록"><br>
<input type="button" value="장비등록"><br>
<input type="button" value="부품등록"><br>
<input type="button" value="현재위치"><br>
</aside>
<footer>
<h2>Copyright (c) 2018 yangjung All rights reserved</h2>
<img src="image/googleplus-icon.png"align="right" width=40px height=40px>
<img src="image/twitter.gif"align="right">
<img src="image/facebook.gif" align="right">
</footer>
</body>
</html>