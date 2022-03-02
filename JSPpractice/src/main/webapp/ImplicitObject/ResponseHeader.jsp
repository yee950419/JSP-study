<%@ page import="java.util.Collection" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd");
long addDate = s.parse(request.getParameter("addDate")).getTime();
int addInt = Integer.parseInt(request.getParameter("addInt"));
String addStr = request.getParameter("addStr");

response.addDateHeader("myDate", addDate);
response.addIntHeader("myNumber", addInt);
response.addHeader("myName", addStr);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체 - response</title>
</head>
<body>
	<h2>응답 헤더 정보 출력하기</h2>
	<%
	Collection<String> headerNames = response.getHeaderNames();
	for(String hNames : headerNames){
		String hvalues = response.getHeader(hNames);
	%>
		<li><%= hNames %> : <%= hvalues %></li>
	<%
	}
	%>
	
	<h2>myNumber만 출력하기</h2>
	<%
	Collection<String> numValues = response.getHeaders("myNumber");
	for(String values : numValues){
	%>
		<li>myNumber : <%= values %></li>
	<%
	}
	%>
</body>
</html>