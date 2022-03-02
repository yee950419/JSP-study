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
	//Object pInteger = pageContext.getAttribute("pageInteger");
	//Object pString = pageContext.getAttribute("pageString");
	//Object pPerson = pageContext.getAttribute("pagePerson");
	Object pInteger = pageContext.getAttribute("pageInteger");
	Object pString = pageContext.getAttribute("pageString");
	Object pPerson = pageContext.getAttribute("pagePerson");
	%>
	<ul>
		<li>Integer 객체 : <%= (pInteger==null)?"null" : pInteger %></li>
		<li>String 객체 : <%= (pString==null)?"null" : pString %></li>
		<li>Person 객체 : <%= (pPerson==null)?"null" : ((Person)pPerson).getName() %></li>
	</ul>
</body>
</html>