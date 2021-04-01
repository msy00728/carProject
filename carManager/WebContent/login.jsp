<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String id =request.getParameter("id");
String passwd =request.getParameter("password");
String name ="";
Connection conn=null;
PreparedStatement pstmt=null;
ResultSet rs=null;
String sql="";
String jdbc_driver="com.mysql.cj.jdbc.Driver";
String jdbc_url="jdbc:mysql://127.0.0.1/yangjung?serverTimezone=UTC";
try{
	Class.forName(jdbc_driver);
	conn=DriverManager.getConnection(jdbc_url,"root","1234");
	sql= "select*from car_member where id=?";
	pstmt=conn.prepareStatement(sql);
	pstmt.setString(1,id);
	rs=pstmt.executeQuery();
	if(rs.next()){
		String userID=rs.getString("id");
		String userPWD=rs.getString("passwd");
		String userName=rs.getString("name");
		String pwd=rs.getString("passwd");
		if(passwd.equals(pwd)){%>
		<%=rs.getString("name")%>님 환영합니다.<%
		session.setAttribute("s_Name",userName);
		session.setAttribute("s_Id",userID);
		response.sendRedirect("NewFile.jsp");
		}
		else{
		%>
		<script type="text/javascript">
		alert("패스워드 오류\n패스워드를 다시 입력하세요.");
		history.back();
		</script>
		<%
		}
	}else{%>
	<script type="text/javascript">
		alert("ID 오류\nID를 다시 입력하세요.");
		history.back();
		</script>
		<%} 
}catch(SQLException e){
	out.println(e.getMessage());
}finally{
	if(rs !=null)
		rs.close();
	if(pstmt !=null)
		pstmt.close();
	if(conn !=null)
		conn.close();
}
		%>
	


</body>
</html>