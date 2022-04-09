<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%!
	public int add(int num1, int num2) {
	return num1 + num2;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int result =add(10, 20);
	%>
	<h1>덧셈결과 1 : <%= result %></h1>
	<h2>덧셈 결과 2 : <%= add(20, 30) %></h2>
</body>
</html>