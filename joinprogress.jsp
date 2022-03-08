<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입(아이디 중복x)</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String birth = request.getParameter("birth");
	String email = request.getParameter("email");
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection connection = null;
	PreparedStatement pstat = null;
	Statement statement = null;
	ResultSet rs = null;
	boolean x =false;
	String insertquery = "insert into family values('"+name+"','"+id+"','"+password+"','"+birth+"','"+email+"')";

	try {
		StringBuffer query = new StringBuffer();
		query.append("select emp_id from family where emp_id=?");
		
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/database_name","root","jhwang-0414");
		pstat = connection.prepareStatement(query.toString());
		pstat.setString(1, id);
		rs = pstat.executeQuery();
		
		statement = connection.createStatement();
		
		if(rs.next()) {
			x=true;
			response.sendRedirect("joinfail.jsp");
		} else {
			statement.executeUpdate(insertquery);
			response.sendRedirect("joinsuccess.jsp");
		}

		//String selectquery = "select * from family where emp_id='"+id+"'";
	
		//ResultSet resultSet = statement.executeQuery(selectquery);
		//statement.executeQuery(query);
	
		//statement.close();
		//connection.close();
	}
	
	catch(Exception e) {
		out.println(e);
	}
%>

</body>
</html>
