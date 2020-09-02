<%@ page contentType="text/html;charset=utf-8"%>
<html>
	<head>
		<title>Cookie</title>
	</head>
	<body>
		<%
			Cookie[] cookies = request.getCookies();
			//얻어온 모든 쿠키를 삭제하도록 Cookie 객체의 setMaxAge()메소드에 유효기간을 0으로 설정
			for(int i = 0; i < cookies.length; i++){
				cookies[i].setMaxAge(0);
				response.addCookie(cookies[i]);
			}
			//웹 페이지 cookie02.jsp로 이동하도록 response내장 객체의 sendRedirect()메소드를 작성
			response.sendRedirect("cookie02.jsp");
		%>
	</body>
</html>