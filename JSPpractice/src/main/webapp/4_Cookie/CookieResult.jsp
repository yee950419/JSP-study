<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키값 확인하기</title>
</head>
<body>
	<%
	Cookie[] cookies = request.getCookies();
	for(int i=0;i<cookies.length;i++){
		String cName = cookies[i].getName();
		String cValue = cookies[i].getValue();
		out.println(String.format("쿠키명 : %s - 쿠키값 : %s<br/>", cName, cValue));
	}
	%>
</body>
</html>