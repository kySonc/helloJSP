<%@ page contentType="text/html;charset=utf-8"%>
<html>
	<head>
		<title>Implicit Objects</title>
	</head>
	<body>
		<%
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/html; charset=utf-8");
		%>
		<p>문자 인코딩 : <%=response.getCharacterEncoding() %>
		<p>콘텐츠 유형 : <%=response.getContentType() %>
	</body>
</html>