<%@ page language = 'java' contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset = "UTF-8">
	<title>회원 탈퇴</title>
</head>
<body>
<h2>회원 탈퇴</h2>
<br/>
<form action = "deleteprogress.jsp" method="post">
	<table>
		<tr>
			<td id="title">아이디</td>
			<td>
				<input type="text" name="id" maxlength="15">
			</td>
		</tr>
		
		<tr>
			<td id="title">비밀번호</td>
			<td>
				<input type="text" name="password" maxlength="15">
			</td>
		</tr>
	</table>
	
	<input type="submit" value="탈퇴하기"/>
</form>
<form action="login.jsp" method="post">
	<input type="submit" value="뒤로가기"/>
</form>
</body>
</html>
