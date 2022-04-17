<%@ page import="java.util.HashMap"%>
<%@ page import="common.Person"%>
<%@ page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head><title>application 영역</title></head>
<body>
    <h2>application 영역의 공유</h2>
    <%
    	// HashMap : <저장할 때 이름의 타입, 저장하는 대상의 데이터타입>
    	HashMap<String, Person> hashMap = new HashMap<>();
    	hashMap.put("one", new Person("이지현", 26));
    	hashMap.put("two", new Person("김혁", 27));
    	
    	application.setAttribute("hashMap", hashMap);
    %>
    <h2>application 영역에 속성이 저장되었습니다.</h2>
</body>
</html>