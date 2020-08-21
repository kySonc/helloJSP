<%@ page contentType="text/html; charset=utf-8" %>
<html>
	<head>
		<title>Action Tag</title>
	</head>
	<body>
		<h3>param 액션 태그</h3>
		<jsp:forward page="param01_data.jsp">
			<%--매개변수 id와 값을 전송하기 위해 param 액션태그를 작성 --%>
			<jsp:param name="id" value="admin" />
			<%--한글이 깨지지 않도록 java.net.URLEncoder.encode()메소드 사용 --%>
			<jsp:param name="name" value='<%=java.net.URLEncoder.encode("관리자")%>'/>
		</jsp:forward>
		<p>Java Server Page
	</body>
</html>