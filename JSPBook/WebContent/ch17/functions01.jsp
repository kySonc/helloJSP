<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>
	<head>
		<title>JSTL</title>
	</head>
	<body>
		<p>java 문자열 검색
		<%--설정된 문자열 'Hello, Java Server Pages!'에 검색 문자열 java가 포함되었늕지 확인하도록 fn:contains태그 작성 --%>
		<p>Hello, Java Server Pages! => ${fn:contains("Hello, Java Server Pages!" , "java") }
		<%--설정된 문자열 'hello, java server pages!'에 대,소문자와 상관없이 검색 문자열 java가 포함되었늕지 확인하도록 fn:containsIgnoreCase태그 작성 --%>
		<p>hello, java server pages! => ${fn:containsIgnoreCase("hello, java server pages!" , "java") }
	</body>
</html>