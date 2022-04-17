<%@page import="java.util.HashMap"%>
<%@ page import="java.util.Set"%>
<%@ page import="common.Person"%>
<%@ page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head><title>application 영역</title></head>
<body>
    <h2>application 영역의 속성 읽기</h2>
    <%
    	HashMap<String, Person> hashMap = (HashMap<String, Person>)application.getAttribute("hashMap");
    	
    	for(String key : hashMap.keySet())
    	{
    		out.print("key = " + key + ", value = " + hashMap.get(key).getAge() + ", " + hashMap.get(key).getName() + "<br>");
    	}
    	
    
// 	    Map<String, Person> maps = (Map<String, Person>)application.getAttribute("maps");
// 	    Set<String> keys = maps.keySet(); 
	    
// 	    for (String key : keys) 
// 	    {
// 	        Person person = maps.get(key);
// 	        out.print(String.format("이름 : %s, 나이 : %d<br/>", 
// 	                person.getName(), person.getAge()));
// 	    }  
    %>
</body>
</html>