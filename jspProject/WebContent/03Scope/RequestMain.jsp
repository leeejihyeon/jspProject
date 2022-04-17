<%@ page import="common.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	request.setAttribute("requestString", "request 영역의 문자열");
	request.setAttribute("requestPerson", new Person("안중근", 31)); 
%>
<html>
<head><title>request 영역</title></head>
<body>
    <h2>request 영역의 속성값 삭제하기</h2>
    <%
        request.removeAttribute("requestString"); 
        request.removeAttribute("requestInteger"); // 에러 없음
    %>
    
    <h2>request 영역의 속성값 읽기</h2>
    <%
    	Person rPerson = (Person)(request.getAttribute("requestPerson"));
    %>
    <ul>
        <li>String 객체 : <%= request.getAttribute("requestString") %></li>
        <li>Person 객체 : <%= rPerson.getName() %>, <%= rPerson.getAge() %></li>
    </ul>
    
    <h2>포워드된 페이지에서 request 영역 속성값 읽기</h2>
     <!-- 포워드란? : 현재 페이지로 들어온 요청을 다음 페이지로 보내는 기능을 말한다. -->
     <!-- request.getRequestDispatcher("포워드할 파일 경로").forward(request, response) -->
    <%
	    request.getRequestDispatcher("RequestForward.jsp?paramHan=한글&paramEng=English")  
	        .forward(request, response);
//     	다른방법으로 작성하는법은?
//     	RequestDispatcher rd = request.getRequestDispatcher("RequestForward.jsp?paranHan=한글&paramEng=English");
//     	rd.forward(request, response);
    %>
</body>
</html>