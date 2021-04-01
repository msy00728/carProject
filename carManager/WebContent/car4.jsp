<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
     function check(){
    	 if(document.form.partCode.value==""){
    		 alert("부품번호를 입력하세요");
    		 document.form.partCode.foucs();
    	 }
    	 if(document.form.partName.value==""){
    		 alert("부품명을 입력하세요");
    		 document.form.partName.foucs();
    	 }
    	 if(document.form.model.value==""){
    		 alert("모델명를 입력하세요");
    		 document.form.model.foucs();
    	 }
    	 if(document.form.standard.value==""){
    		 alert("규격을 적으시오");
    		 document.form.standard.foucs();
    	 }
         if(document.form.unit.value==""){
    		 alert("단위를 적으시오");
    		 document.form.unit.foucs();
    	 }
         if(document.form.purchase.value==""){
    		 alert("메입가를 적으시오");
    		 document.form.purchase.foucs();
    	 }
         if(document.form.sales.value==""){
    		 alert("매출가를 적으시오");
    		 document.form.sales.foucs();
    	 }
         if(document.form.memo.value==""){
    		 alert("메모를 적으시오");
    		 document.form.memo.foucs();
    	 }
         else{
        	 document.form.submit();
         }
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
<h1 id="h1"><a href="NewFile.jsp">카센터(붕붕이 나라)</h1></a>
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
<li><a href="car2.jsp">고객정보</a></li>
<li><a href="#">견적관리</a></li>
<li><a href="#">정비이력</a></li>
<li><a href="#">게시판</a></li>
</ul>
</nav>
<section>
<h1 align="center">차량 부품 관리</h1>
<form name="form" method="post" action="in_process2.jsp">
<table border="2" align="center">
<tr>

<th>부품번호</th><td><input type="text" name="partCode" size="60"></td>
</tr>
<tr>
<th>부품명</th><td><input type="text" name="partName" size="60"></td>
</tr>
<tr>
<th>모델명</th><td><input type="text" name="model" size="60"></td>
</tr>
<tr>
<th>규격</th><td><input type="text" name="standard" size="60"></td>
</tr>

<tr>
<th>단위</th><td><input type="text" name="unit" size="60"></td>
</tr>
<tr>
<th>매입가</th><td><input type="text" name="purchase" size="30">매출가<input type="text" name="sales" size="30"></td>
</tr>
<tr>
<th>메모</th><td><textarea cols=60 rows=5 name="memo" placeholder="메모하세요"></textarea>
</tr>
<tr>
<td colspan="2" align="center"><input type="button"value="부품등록" onclick="javascript:check()"><input type="reset"value="다시작성">
</td></tr>

</table></form>
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
