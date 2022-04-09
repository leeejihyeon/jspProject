<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 지시어 - errorPage, isErrorPage 속성</title>
</head>
<body>
	<%
		// 에러 발생 함 왜? - 최초 실행시 매개변수가 없으므로 null 값이 전달되어서 예외가 발생한다.
		int myAge = Integer.parseInt(request.getParameter("age")) + 10;
		out.print("10년후 당신의 나이는 : " + myAge); 
	%>
</body>
</html>