<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection connection = null;
	PreparedStatement pstat = null;
	Statement statement = null;
	ResultSet rs = null;
	boolean x = false;
	try {
		StringBuffer query = new StringBuffer();
		query.append("select emp_passwd from family where emp_id=?");
		
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/database_name","root","jhwang-0414");
		pstat = connection.prepareStatement(query.toString());
		pstat.setString(1, id);
		rs = pstat.executeQuery();
		
		if(rs.next()) {
			x=true;
			rs.getString(1);
			String pwd = rs.getString("emp_passwd");
			if(pwd.equals(pwd)) {
				String sql="delete from family where emp_id=?";
				pstat = connection.prepareStatement(sql);
				pstat.setString(1, id);
				
				pstat.executeUpdate();
				response.sendRedirect("deletesuccess.jsp");
			}
			else {
				response.sendRedirect("deletefail.jsp");
			}
		} else {
			response.sendRedirect("deletefail.jsp");
		}
	} catch(Exception e) {
		out.println(e);
	}

%>
</body>


</html>
