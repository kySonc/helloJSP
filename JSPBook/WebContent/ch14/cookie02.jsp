<%@ page contentType="text/html; charset=utf-8"%>
<html>
	<head>
		<title>Cookie</title>
	</head>
	<body>
		<%
			//쿠키 정보를 얻어오도록 request내장 객체의 getCookies()메소드를 작성
			Cookie[] cookies = request.getCookies();
			//얻어온 쿠키 정보의 개수를 출력하도록 Cookie객체의 length를 작성
			out.println("현재 설정된 쿠키의 개수 => " + cookies.length + "<br>");
			out.println("=======================================<br>");
			//얻어온 쿠키 정보에서 쿠키 이름과 값을 하나씩 출력하도록 Cookie 객체의 getName(),getValue()메소드를 작성
			for (int i = 0 ; i < cookies.length; i++) {
				out.println("설정된 쿠키의 속성 이름 [" + i + "] : " + cookies[i].getName() + "<br>");
				out.println("설정된 쿠키의 속성 값 [" + i + "] : " + cookies[i].getValue() + "<br>");
				out.println("--------------------------------------------<br>");
			}
		%>
	</body>
</html>
