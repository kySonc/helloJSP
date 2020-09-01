<%@ page contentType="text/html;charset=utf-8"%>
<html>
	<head>
		<title>Session</title>
	</head>
	<body>
		<h4>------세션 유효 시간 변경 전------</h4>
		<%
			//세션에 설정된 유효 시간을 가져오도록 session내장 객체의 getMaxInactiveInterval()작성 
			int time = session.getMaxInactiveInterval()/60;
		
			out.println("세션 유효 시간 : "+ time + "분<br>");
		%>
		<h4>------세션 유효 시간 변경 후------</h4>
		<%
			//setMaxInactiveInterval()이용 세션에 유효 시간을 60X60초로 설정
			session.setMaxInactiveInterval(60*60);
			time = session.getMaxInactiveInterval()/60;
			
			out.println("세션 유효 시간 : "+ time + "분<br>");
		%>
	</body>
</html>