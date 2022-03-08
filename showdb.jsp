<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager" %>

<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
<table border='1'>
<tr>
	<td>이름</td>
	<td>아이디</td>
	<td>비밀번호</td>
	<td>생년월일</td>
	<td>이메일</td>
</tr>
<%
	String sql = "select emp_name, emp_id, emp_passwd, emp_birth, emp_mail from family";
	//String sql = "select * from family";
	
	Connection connection = (Connection)session.getAttribute("DB Connection");
	Statement statement = connection.createStatement();
	ResultSet rs = statement.executeQuery(sql);
	
	while(rs.next()) {
%>
<tr>
	<td><%=rs.getString("emp_name") %></td>
	<td><%=rs.getString("emp_id") %></td>
	<td><%=rs.getString("emp_passwd") %></td>
	<td><%=rs.getString("emp_birth") %></td>
	<td><%=rs.getString("emp_mail") %></td>
</tr>
<%
	}
%>
</table>
<form action="login.jsp" method="post">
	<input type="submit" value="로그아웃"/>
</form>

</body>

</html>
