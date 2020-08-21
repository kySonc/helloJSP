<%@ page contentType="text/html; charset-= utf-8" %>
<html>
	<head>
		<title>Action Tag</title>
	</head>
	<body>
		<h2>forward 액션 태그</h2>
		<%--forward_date.jsp 페이지로 이동 --%>
		<%--현재 페이지에서 forward 액션 태그가 선언된 지점이전까지 생성된 HTML 코드가 손실된다 --%>
		<jsp:forward page="forward_date.jsp"/>
		<p>---------------------------------
	</body>
</html>