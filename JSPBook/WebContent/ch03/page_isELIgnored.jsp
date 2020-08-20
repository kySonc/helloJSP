<%@ page contentType="text/html; charset=utf-8" %>
<html>
	<head>
		<title>Direction Tag</title>
	</head>
	<body>
		<%
			request.setAttribute("RequestAttribute", "request 내장 객체" );
		%>
		${requestScope.RequestAttribute}
	</body>
</html>