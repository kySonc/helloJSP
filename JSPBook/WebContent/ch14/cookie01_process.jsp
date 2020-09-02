<%@ page contentType="text/html;charset=utf-8"%>
<html>
	<head>
		<title>Cookie</title>
	</head>
	<body>
		<%
			//요청 파라미터 아이디와 비밀번호를 전송받도록 request 내장 객체의 getParameter()메소드 작성
			String user_id = request.getParameter("id");
			String user_pw = request.getParameter("passwd");
			//전송된 아이디와 비밀번호가 각각 admin,1234와 일치하면 쿠키 이름 userID,userPW에 값을 설정하도록 Cookie객체 생성
			if(user_id.equals("admin") && user_pw.equals("1234")){
				Cookie cookie_id = new Cookie("user_ID",user_id);
				Cookie cookie_pw = new Cookie("user_PW",user_pw);
				//생성된 Cookie객체를 쿠키로 저장하도록 addCookie()메소드 작성
				response.addCookie(cookie_id);
				response.addCookie(cookie_pw);
				out.println("쿠키 생성이 성공했습니다,<br>");
				out.println(user_id + "님 환영합니다.");
				//일치하지 않으면 실패 메시지를 출력
			}else{
				out.println("쿠키 생성이 실패합니다.");
			}
		%>
	</body>
</html>