<%@ page contentType="text/html;charset=utf-8"%>
<html>
	<head>
		<title>Implicit Object</title>
	</head>
	<body>
		<%
			String hostValue = request.getHeader("host");
			String alValue = request.getHeader("accept-language");
			
			out.println("호스트명 : " + hostValue + "<br>");
			out.println("설정된 언어 : " + alValue + "<br>");		
		%>
	</body>
</html>