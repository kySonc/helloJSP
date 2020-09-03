<%@ page contentType="text/html;charset=utf-8"%>
<!-- JSP페이지에 JSTL의 Core태그를 사용하도록 taglib 디렉티브 태그를 작성 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<title>JSTL</title>
	</head>
	<body>
		browser 값 설정
		<!-- browser 변수에 변수 값으로 header['User-Agent']를 설정하도록<c:set>태그를 작성 -->
		<c:set var="browser" value="${header['User-Agent'] }"/>
		<br>
		<!-- browser 변수 값을 출력하도록<c:out>태그를 작성 -->
		<c:out value="${browser}"/>
		<p>browser 변수 값 제거 후
			<!-- browser 변수 값을 삭제하도록<c:remove>태그를 작성 -->
			<c:remove var="browser"/>
			<!-- browser 변수 값을 출력하도록<c:out>태그를 작성 -->
			<c:out value="${browser }"/>
	</body>
</html>