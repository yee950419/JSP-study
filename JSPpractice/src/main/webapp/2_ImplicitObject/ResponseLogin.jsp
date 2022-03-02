<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체 - Response</title>
</head>
<body>
	<%
	String id = request.getParameter("user_id");
	String pw = request.getParameter("user_pw");
	if(id.equalsIgnoreCase("sanghak")&&pw.equalsIgnoreCase("perfect")){
		response.sendRedirect("ResponseWelcome.jsp");
	}
	else{
		request.getRequestDispatcher("ResponseMain.jsp?loginErr=1")
		.forward(request, response);
	}
	%>
</body>
</html>