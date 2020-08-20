<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Scripting Tag</title>
	</head>
	<body>
		Page Count is:
		<%--스크립틀릿 태그 --%>
		<%--전역 메소드 myMethod() 호출--%>
		<%
			out.println(myMethod(0));
		%>
		<%--선언문 태그 [메소드]--%>
		<%--전역 메소드 myMethod()설정--%>
		<%! public int myMethod(int count){
			return ++count;
		}%>
	</body>
</html>