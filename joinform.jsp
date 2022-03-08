<%@ page language = 'java' contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset = "UTF-8">
	<title>회원 가입</title>
</head>
<body>
<h2> 회원 가입 </h2>
<br/>
<form action="joinprogress.jsp" method="post">
	<table>
		<tr>
			<td id="title">이름</td>
			<td>
					<input type="text" name="name" maxlength="15"/> <br/><br/>
			</td>
		</tr>
		
		<tr>
			<td id="title">아이디</td>
			<td>
					<input type="text" name="id" maxlength="15"/> 
			</td>
		</tr>
		
		<tr>
			<td id="title">비밀번호</td>
			<td>
					<input type="password" name="password" maxlength="15"/> <br/><br/>
			</td>
		</tr>
		
		<tr>
			<td id="title">생년월일(예시 990414)</td>
			<td>
					<input type="text" name="birth" maxlength="6"/> <br/><br/>
			</td>
		</tr>
		
		<tr>
			<td id="title">이메일</td>
			<td>
				<input type="text" name="email" maxlength="35"/> <br/><br/>
			</td>
		</tr>
	</table>
	
	<input type="submit" value="가입하기"/>
</form>
<form action="login.jsp" method="post">
	<input type="submit" value="뒤로가기"/>
</form>


</body>

</html>
