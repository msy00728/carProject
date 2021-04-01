<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%-- <%
	int num1=10;
	int num2=20;
	int result=num1+num2;
%>
결과 :<%=result %> --%>

<%
	Connection conn=null;
    try{
	String jdbcDriver="com.mysql.cj.jdbc.Driver";
	String jdbcurl="jdbc:mysql://localhost/yangjung?serverTimeszone=UTC";
	String user="root"; // root 대신 내 아이디 적어도됨
	String pass="1234"; // 자신이 쓴 패스워드로 입력
	Class.forName(jdbcDriver);
	conn=DriverManager.getConnection(jdbcurl,user,pass);
	System.out.println("성공");
    }catch(SQLException e){
    	e.printStackTrace();
    	out.println("데이터베이스 연결이 실패했습니다.<br>");
    	
    }
%>
</body>
</html>