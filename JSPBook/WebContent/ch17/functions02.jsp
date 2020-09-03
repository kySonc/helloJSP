<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>
	<head>
		<title>JSTL</title>
	</head>
	<body>
		<%--설정된 문자열'Hello, Java Server Pages!'에서 공백문자를 기준으로 문자열을 분리하도록  fn:split 태그 작성--%>
		<c:set var="texts" value="${fn:split('Hello, Java Server Pages!',' ')}" />
		<%--10행에서 분리된 문자열 길이만큼 반복하여 분리된 문자열을 출력하도록 작성 --%>
		<c:forEach var="i" begin="0" end="${fn:length(texts)-1}">
			<p>text[${i }] = ${texts[i] }
		</c:forEach>
		<%--10행에서 분리된 문자열과 '-'를 연결하도록 fn:join 태그 작성 --%>
		<p><c:out value="${fn:join(texts, '-') }"/>
	</body>
</html>