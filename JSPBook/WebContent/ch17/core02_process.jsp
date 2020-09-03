<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<title>JSTL</title>
	</head>
	<body>
		<%
			String number = request.getParameter("number");
		%>
		<!--number변수에 폼에서 전송된 number값을 설정하도록 <c:set>태그를 작성 -->
		<c:set var="number" value="<%=number %>"/>
		<!--다중 조건문을 처리하도록<c:choose>태그를 작성 -->
		<c:choose>
			<!--<c:when>태그를 사용하여 저건문 number%2==0이 참이면 number변수 값을 출력하도록 <c:out>태그 작성 -->
			<c:when test="${number%2==0 }">
				<c:out value="${number }"/>은 짝수입니다.
			</c:when>
			<!--<c:when>태그를 사용하여 저건문 number%2==1이 참이면 number변수 값을 출력하도록 <c:out>태그 작성 -->
			<c:when test="${number%2==1 }">
				<c:out value="${number }"/>은 홀수입니다.
			</c:when>
			<!--조건문에 해당하지 않으면 실행하도록<c:otherwise>태그를 작성 -->
			<c:otherwise>
				숫자가 아닙니다.
			</c:otherwise>
		</c:choose>
	</body>
</html>