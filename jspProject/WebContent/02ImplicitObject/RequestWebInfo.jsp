<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>내장 객체 - request</title></head>
<body>
    <h2>1. 클라이언트와 서버의 환경정보 읽기</h2>
    <ul>
        <li>데이터 전송 방식 : <%= request.getMethod() %></li>		<!-- get, post 중 전송방식을 반환함 -->
        <li>URL : <%= request.getRequestURL() %></li>			<!-- 요청 주소를 반환함 -->
        <li>URI : <%= request.getRequestURI() %></li>			<!-- 요청 주소를 반환함 -->
        <li>프로토콜 : <%= request.getProtocol() %></li>		
        <li>서버명 : <%= request.getServerName() %></li>
        <li>서버 포트 : <%= request.getServerPort() %></li>
        <li>클라이언트 IP 주소 : <%= request.getRemoteAddr() %></li>	<!-- 클라이언트의 IP 주소를 반환함 -->
        <li>쿼리스트링 : <%= request.getQueryString() %></li>		<!-- 요청 주소 뒷부분의 매개변수 전달을 위한 쿼리스트링 전체를 반환함 -->
        <li>전송된 값 1 : <%= request.getParameter("eng") %></li>	<!-- 요청 주소 뒷부분의 매개변수 쿼리스트링 중 특정 키값을 반환함 -->
        <li>전송된 값 2 : <%= request.getParameter("han") %></li>
    </ul>
</body>
</html>