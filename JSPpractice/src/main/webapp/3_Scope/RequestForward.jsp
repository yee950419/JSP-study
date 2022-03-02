<%@ page import="common.Person" %>
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
	Person p = (Person)(request.getAttribute("requestPerson"));
	%>
	<h2>포워드로 전달된 페이지</h2>
	<h4>RequestMain.jsp 파일의 request 영역 속성 읽기</h4>
	<ul>
		<li>String 객체 : <%= request.getAttribute("requestString") %></li>
		<li>Person 객체 : <%= p.getName() %>, <%= p.getAge() %></li>
	</ul>
	
	<h4>매개변수로 전달된 값 출력하기</h4>
	<%
	request.setCharacterEncoding("UTF-8");
	out.println(request.getParameter("paramHan"));
	out.println(request.getParameter("paramEng"));
	%>
</body>
</html>