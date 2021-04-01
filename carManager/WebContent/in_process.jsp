<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="DBcon.jsp" %>
<% 
request.setCharacterEncoding("utf-8");
String id=request.getParameter("id");
String name=request.getParameter("name");
String password=request.getParameter("password");
String password1=request.getParameter("password1");
String gender=request.getParameter("gender");
String email=request.getParameter("email")+"@"+request.getParameter("email2");
String phone=request.getParameter("phone1")+"-"+request.getParameter("phone2")+"-"+request.getParameter("phone3");
String tel=request.getParameter("tel1")+"-"+request.getParameter("tel2")+"-"+request.getParameter("tel3");
String address=request.getParameter("address");
String carNumber=request.getParameter("carNumber");
String car_Type=request.getParameter("car_Type");
System.out.println("id"+id);
System.out.println("name"+name);
System.out.println("password"+password);
System.out.println("password1"+password1);
System.out.println("gender"+gender);
System.out.println("email"+email);
System.out.println("phone"+phone);
System.out.println("tel"+tel);
System.out.println("address"+address);
System.out.println("carNumber"+carNumber);
System.out.println("car_Type"+car_Type);
PreparedStatement pstmt=null;
try{
	String sql="insert into car_member(id,name,passwd,gender,email,phone,tel,address,carNumber,car_Type) values(?,?,?,?,?,?,?,?,?,?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,id);
	pstmt.setString(2,name);
	pstmt.setString(3,password);
	pstmt.setString(4,gender);
	pstmt.setString(5,email);
	pstmt.setString(6,phone);
	pstmt.setString(7,tel);
	pstmt.setString(8,address);
	pstmt.setString(9,carNumber);
	pstmt.setString(10,car_Type);
	pstmt.executeUpdate();
	System.out.println("저장완료");
}catch(SQLException e){
	e.printStackTrace();
	System.out.println("저장 실패");
}
%>
</body>
</html>