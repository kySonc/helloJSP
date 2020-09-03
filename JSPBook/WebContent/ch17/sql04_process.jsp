<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<html>
	<head>
		<title>JSTL</title>
	</head>
	<body>
		<%
			request.setCharacterEncoding("utf-8");
		
			String id = request.getParameter("id");
			String passwd = request.getParameter("passwd");
		%>
		<sql:setDataSource var="dataSource"
			url="jdbc:mysql://localhost:3306/JSPBookDB"
			driver="com.mysql.jdbc.Driver" user="root" password="1234"/>
		<%--member테이블의 id, passwd 필드 값과 일치하는 값이 있으면 해당 레코드를 삭제하도록<sql:update>태그로 UPDATE문 작성--%>
		<sql:update dataSource="${dataSource }" var="resultSet">
			DELETE FROM member where id =? and passwd =?
			<%--폼 페이지에서 전송된 아이디, 이름, 비밀번호를 20행의 물음표에 설정하도록<sql:param>태그 작성 --%>
			<sql:param value="<%=id %>"/>
			<sql:param value="<%=passwd %>"/>
		</sql:update>
		<c:import var="url" url="sql01.jsp"/>
		${url}
	</body>
</html>