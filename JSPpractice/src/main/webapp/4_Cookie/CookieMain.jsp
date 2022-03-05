<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 설정</title>
</head>
<body>
	<h2>1. 쿠키 설정</h2>
	<%
	Cookie c1 = new Cookie("myCookie", "맛있어요");	//쿠키 생성
	c1.setPath(request.getContextPath());	//경로를 컨텍스트 루트로 설정
	c1.setMaxAge(3600);			// 유지 기간을 1시간으로 설정
	response.addCookie(c1);		// 응답 헤더에 쿠키 추가
	%>
	
	<h2>2. 쿠키 설정 직후 쿠키값 확인하기</h2>
	<%
	Cookie[] cookies = request.getCookies();
	if(cookies != null){
		for(Cookie c : cookies){
			String name = c.getName();
			String value = c.getValue();
			out.print(String.format("이름 : %s, 값 : %s<br/>", name, value));
		}
	}
	%>
	
	<h2>3. 페이지 이동 후 쿠키값 확인하기</h2>
	<a href="CookieResult.jsp">다음 페이지에서 쿠키 값 확인하기</a>
</body>
</html>