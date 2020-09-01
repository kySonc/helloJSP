<%@ page contentType="text/html;charset=utf-8"%>
<html>
	<head>
		<title>Session</title>
	</head>
	<body>
		<%
			//고유한 세션 내장 객체의 아이디를 가져오도록 getId()메소드 작성
			String session_id = session.getId();
			//세션에 마지막으로 접근한 시간을 가져오도록 getLastAccessedTime()메소드 작성	
			long last_time = session.getLastAccessedTime();
			//세션이 생성된 시간을 가져오도록 getCreationTime()메소드 작성
			long start_time = session.getCreationTime();
			//웹 사이트에 머문 시간을 계산하도록 작성
			long used_time = (last_time - start_time) / 60000;
			
			out.println("세션 아이디 : " + session_id + "<br>");
			out.println("요청 시작 시간 : " + start_time + "<br>");
			out.println("요청 마지막 시간 : " + last_time + "<br>");
			out.println("웹 사이트의 경과 시간 : " + used_time + "<br>");
		%>
	</body>
</html>