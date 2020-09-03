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
			String name = request.getParameter("name");
		%>
		<sql:setDataSource var="dataSource"
			url="jdbc:mysql://localhost:3306/JSPBookDB"
			driver="com.mysql.jdbc.Driver" user="root" password="1234"/>
		<%--member테이블의 새로운 필드 값을 삽입하도록<sql:update>태그로 INSERT문을 작성 --%>
		<sql:update dataSource="${dataSource }" var="resultSet">
			INSERT INTO member(id, name, passwd) VALUES(?,?,?)
			<%--폼 페이지에서 전송된 아이디, 이름, 비밀번호를 21행의 물음표에 설정하도록<sql:param>태그 작성 --%>
			<sql:param value="<%=id %>"/>
			<sql:param value="<%=name %>"/>
			<sql:param value="<%=passwd %>"/>
		</sql:update>
		<c:import var="url" url="sql01.jsp"/>
		${url}
	</body>
</html>