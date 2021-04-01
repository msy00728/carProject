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
table tr th{
background-color:gray;
}
</style>
</head>
<body>
<header>
<h1 id="h1">카센터(붕붕이 나라)</h1>
<div id="div1">
회원ID:<input type="text" name="id"> 
비밀번호:<input type="password" name="password">
<input type="button"value="로그인">
<a href="#">회원가입</a>
</div>
</header>
<nav>
<ul>
<li><a href="#">회사소개</a></li>
<li><a href="#">부품정보</a></li>
<li><a href="#">고객정보</a></li>
<li><a href="#">견적관리</a></li>
<li><a href="#">정비이력</a></li>
<li><a href="#">게시판</a></li>
</ul>
</nav>
<section>
<h1 align="center">고객 LIST</h1>
<table border="1">
<tr>
<th>고객ID</th>
<th>고객이름</th>
<th>자동차번호</th>
<th>자동차 종류</th>
<th>핸드폰</th>
<th>전화번호</th>
<th colspan="2">주소</th>
</tr>
<%@include file="DBcon.jsp" %>
<%
PreparedStatement pstmt=null;
ResultSet rs=null;
 String sql="select*from car_member";
pstmt=conn.prepareStatement(sql);

rs=pstmt.executeQuery();
while(rs.next()){
	System.out.println("err"+rs.getString("id"));
%>
<tr>
<td><%=rs.getString("id") %></td>
<td><%=rs.getString("name") %></td>
<td><%=rs.getString("carNumber") %></td>
<td><%=rs.getString("car_Type") %></td>
<td><%=rs.getString("phone") %></td>
<td><%=rs.getString("tel") %></td>
<td><%=rs.getString("address") %></td>
</tr>
<%}
%>
</table>
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
