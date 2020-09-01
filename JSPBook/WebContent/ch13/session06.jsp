<%@ page contentType="text/html;charset=utf-8"%>
<html>
	<head>
		<title>Session</title>
	</head>
	<body>
		<h4>------세션을 삭제하기 전------</h4>
		<%
			String user_id = (String)session.getAttribute("userID");
			String user_pw = (String)session.getAttribute("userPW");
			
			out.println("설정된 세션 이름 : " + user_id + "<br>");
			out.println("설정된 세션 값 : " + user_pw + "<br>");
			//요청에 포함된 클라이언트의 세션이 유효하면 유효한 메시지 출력 아니면 유효하지 않은 메시지 출력
			if(request.isRequestedSessionIdValid()==true){
				out.println("세션이 유효합니다.");
			}else{
				out.println("세션이 유효하지 않습니다.");
			}
			//세션에 저장된 모든 세션 속성을 삭제하는 invalidate()메소드
			session.invalidate();
		%>
		<h4>------세션 삭제한 후------</h4>
		<%
			if(request.isRequestedSessionIdValid()==true){
				out.println("세션이 유효합니다.");
			}else{
				out.println("세션이 유효하지 않습니다.");
			}
		%>
	</body>
</html>