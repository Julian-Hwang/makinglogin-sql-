<%@ page language = 'java' contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset = "UTF-8">
	<title>로그인 홈페이지</title>
</head>
<body style = "background:yellow">
<h2> Luna's DataBase </h2>
<br/>
<form action="loginsuccess.jsp" method="post">
	아이디: <input type="text" name="id" maxlength="15"/> <br/><br/>
	비밀번호: <input type="password" name="password" maxlength="15"/> <br/><br/>
	<input type="submit" value="로그인"/>
</form>
<form action="joinform.jsp" method="post">
	<input type="submit" value="회원가입"/>
</form>
<form action="deleteform.jsp" method="post">
	<input type="submit" value="회원탈퇴"/>
</form>


</body>

</html>
