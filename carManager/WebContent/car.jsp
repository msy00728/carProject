<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
     function check(){
    	 if(document.form.id.value==""){
    		 alert("아이디를 입력하세요");
    		 document.form.id.foucs();
    	 }
    	 if(document.form.name.value==""){
    		 alert("이름을 입력하세요");
    		 document.form.name.foucs();
    	 }
    	 if(document.form.password.value==""){
    		 alert("패스워드를 입력하세요");
    		 document.form.password.foucs();
    	 }
    	 if(document.form.password1.value==""){
    		 alert("확인 패스워드 입력하세요");
    		 document.form.password1.foucs();
    	 }
         if(document.form.gender.value==""){
    		 alert("성별을 고르시오");
    		 document.form.gender.foucs();
    	 }
         if(document.form.email.value==""){
    		 alert("이메일을 적으시오");
    		 document.form.email.foucs();
    	 }
         if(document.form.phone2.value==""){
    		 alert("핸드폰번호를 적으시오");
    		 document.form.phone1.foucs();
    	 }
         if(document.form.tel1.value==""){
    		 alert("전화번호를 적으시오");
    		 document.form.tel1.foucs();
    	 }
         if(document.form.address.value==""){
    		 alert("주소를 적으시오");
    		 document.form.address.foucs();
    	 }
         if(document.form.carNumber.value==""){
    		 alert("차량번호를 적으시오");
    		 document.form.carNumber.foucs();
    	 }
         if(document.form.car_Type.value==""){
    		 alert("차량종류를 적으시오");
    		 document.form.car_Type.foucs();
    	 }
         else{
        	 document.form.submit();
         }
    	  }  
     function id_check(){
    	 
    	 window.open("car1.jsp?id="+document.form.id.value,target="_self");
     }

    </script>
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
<h1 align="center">고객관리</h1>
<form name="form" method="post" action="in_process.jsp">
<table border="2" align="center">
<tr>

<th>아이디</th><td><input type="text" name="id" size="30"><input type="button" value="중복체크" onclick="id_check()"></td>
</tr>
<tr>
<th>이름</th><td><input type="text" name="name" size="30"></td>
</tr>
<tr>
<th>비밀번호</th><td><input type="password" name="password" size="30"></td>
</tr>
<tr>
<th>비밀벅호확인</th><td><input type="password" name="password1" size="30"></td>
</tr>

<tr>
<th>성별</th><td><input type="radio" name="gender" value="1" checked>남<input type="radio" name="gender" value="2">여</td>
</tr>
<tr>
<th>이메일</th><td><input type="text" name="email" size="30">@<select name="email2">
<option>naver.com</option><option>daum.net</option>
</select></td>
</tr>
<tr>
<th>핸드폰</th><td><select name="phone1">
<option>010</option><option>011</option><option>012</option>
</select>
-<input type="text" name="phone2" size="20">-<input type="text" name="phone3" size="20"></td>
</tr>
<tr>
<th>전화번호</th><td><input type="text" name="tel1" size="10">-<input type="text" name="tel2" size="10">-<input type="text" name="tel3" size="10"></td>
</tr>
<tr>
<th>주소</th><td><input type="text" name="address" size="50"></td>
</tr>
<tr>
<th>차량번호</th><td><input type="text" name="carNumber" size="30"></td>
</tr>
<tr>
<th>차량종류</th><td><input type="text" name="car_Type" size="30"></td>
</tr>
<tr>
<td colspan="2" align="center"><input type="button"value="회원가입" onclick="javascript:check()"><input type="reset"value="다시작성">
</td></tr>

</table></form>
</section>
<aside>
<input type="button" value="고객등록"><br>
<input type="button" value="장비등록"><br>
<a href="car4.jsp"><input type="button" value="부품등록"></a><br>
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
