<%@ page contentType="text/html; charset=utf-8"%>
<html>
	<head>
		<title>Action Tag</title>
	</head>
	<body>
		<%--매개변수 값을 받도록 request 내장 객체의 getParameter()메소드 작성 --%>
		<p>아이디 : <%=request.getParameter("id") %>
			<%
				String name = request.getParameter("name");
			%>
		<%--URLDecoder.decode()는 한글이 깨지지 않도록 URLEncoder.encode()메소드로 전송된 데이터를 받는다 --%>	
		<p>이 름 : <%=java.net.URLDecoder.decode(name) %>
	</body>
</html>
