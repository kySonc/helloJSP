<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
	<head>
		<title>Insert title here</title>
	</head>
	<body>
		<fmt:bundle basename="ch09.com.bundle.message">
			<p><fmt:message key="name"/>
			<fmt:message key="hello" var="msg"/>
			<p>${msg}
		</fmt:bundle>	
	</body>
</html>