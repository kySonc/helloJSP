<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Scripting Tag</title>	
	</head>
	<%-- 선언문 태그 [메소드] --%>
	<%-- 전역변수 count를 0으로 초기화 --%>
	<%! int count = 0; %>
	<body>
		Page Count is
		<%--스크립틀릿 태그--%>
		<%--전역변수 count를 1증가 시킴--%>
		<%
			out.println(++count); 
		%>
	</body>
</html>