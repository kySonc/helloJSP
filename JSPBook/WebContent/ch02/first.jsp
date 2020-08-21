<%@ page contentType="text/html; charset=utf-8"%>
<html>
	<head>
		<title>Action Tag</title>
	</head>
	<body>
		<h3>이 파일은 first.jsp입니다.</h3>
		<%--flush 속성 값은 설정한 외부 파일로 제어가 이동할 때 현재 JSP페이지가 지금까지 출력 버퍼에 저장한 결과를 처리 --%>
		<%--기본 값은 false이고, true로 설정하면 외부 파일로 제어가 이동할 때 현재 JSP 페이지가 지금까지 출력 버퍼에 저장된 내용을 웹 브라우저에 출력하고 출력 버퍼를 비운다 --%>
		<jsp:include page="second.jsp" flush="false" />
		<%--include 액션 태그를 만나면 include 액션 태그에 설정된 외부 파일의 실행 내용이 현재 JSP페이지의 출력 버퍼에 추가 저장되어 출력 --%>
		<p>java Server Page</p>
	</body>
</html>