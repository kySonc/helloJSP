<%@ page contentType="text/html;charset=utf-8"%>
<html>
	<head>
		<title>Implicit Objects</title>
	</head>
	<body>
		<%--폼페이지에서 입력한 한글을 utf-8로 읽어라 --%>
		<%--입력된 아이디와 비밀번호를 폼 문으로부터 전송받도록 request 내장객체의 getParameter()작성 --%>
		<%
			request.setCharacterEncoding("utf-8");
			String userid = request.getParameter("id");
			String password = request.getParameter("password");
		%>
		<%--출력하도록 표현문 태그 작성 --%>
		<p>아 이 디 : <%=userid%>
		<p>비밀번호 : <%=password %>
	</body>
</html>