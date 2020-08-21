<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<html>
<head>
	<title>Action Tag</title>
</head>
<body>
	<p>오늘의 날짜 및 시간
	<%--현재 로케일의 날짜 얻기 --%>
	<%--부적합 메소드 사용 대신 calendar클래스를 사용해야 한다--%>
	<p> <%=(new java.util.Date()).toLocaleString() %>
</body>
</html>