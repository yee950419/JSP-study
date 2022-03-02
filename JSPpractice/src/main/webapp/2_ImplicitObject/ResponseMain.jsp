<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String loginErr = request.getParameter("loginErr");
	if(loginErr != null)
		out.print("로그인 실패!");
	%>
	<h2>1. 로그인 폼</h2>
	<form action="./ResponseLogin.jsp" method="post">
		아이디 : <input type="text" name="user_id" /><br />
		패스워드 : <input type="text" name="user_pw" /><br />
		<input type="submit" value="로그인" />
	</form>
	
	<h2>2. HTTP 응답 헤더 설정하기</h2>
	<form action="./ResponseHeader.jsp" method="get">
		날짜 형식 : <input type="text" name="addDate" value="2021-10-25" /><br />
		숫자 형식 : <input type="text" name="addInt" value="8282" /><br />
		문자 형식 : <input type="text" name="addStr" value="홍길동" /><br />
		<input type="submit" value="응답 헤더 설정 & 출력" />
	</form>
</body>
</html>