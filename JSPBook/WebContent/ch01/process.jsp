<%@ page contentType="text/html;charset=utf-8"%>
<html>
	<head>
		<title>Implicit Objects</title>
	</head>
	<body>
		<%--폼에서 한글 입력 받은 값은 utf-8로 인코딩한다 --%>
		<%
			request.setCharacterEncoding("utf-8");
			String name = request.getParameter("name");
		%>
		<%-- request 내장 객체의 getParameter()메소드를 이용 --%>
		<%-- 전송된 요청 파라미터 이름 name을 통해 값을 받는다 --%>
		<p>이 름 : <%=name %>
	</body>
</html>