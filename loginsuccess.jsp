<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8"%>
<%@ page import ="java.sql.Connection" %>
<%@ page import ="java.sql.DriverManager" %>
<%@ page import ="java.sql.ResultSet" %>
<%@ page import ="java.sql.Statement" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
<%
	String userid = request.getParameter("id");
	String pwd = request.getParameter("password");
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/database_name","root","jhwang-0414");
	
	Statement st = connection.createStatement();
	ResultSet rs = st.executeQuery("select * from family where emp_id='" + userid + "'and emp_passwd='" + pwd + "'");
	
	if(rs.next()) {
		session.setAttribute("DB Connection", connection);
		
		out.println(userid + ": 로그인 성공. <a href='showdb.jsp'> 다음 화면 </a>");
	} else {
		response.sendRedirect("loginfail.jsp");
	}
%>

</body>

</html>
