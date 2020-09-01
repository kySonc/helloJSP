<%@page import="java.util.Enumeration"%>
<%@ page contentType="text/html;charset=utf-8"%>
<html>
	<head>
		<title>Session</title>
	</head>
	<body>
		<h4>------세션을 삭제하기 전 ------</h4>
		<%
			String name;
			String value;
		
			String user_id = (String)session.getAttribute("userID");
			String user_pw = (String)session.getAttribute("userPW");
			//세션에 저장된 모든 세션 속성 이름 가져오도록 session내장 객체의 getAttributeNames()메소드 작성
			Enumeration en = session.getAttributeNames();
			int i = 0;
			//Eunmeration객체의 hasMoreElements()메소드를 통해 저장된 세션 속성 이름이 있을 때가지 반복문 작성
			while(en.hasMoreElements()){
				i++;
				//세션 속성 이름을 가져오도록 Eunmeration객체의 nextElement()메소드 작성
				name = en.nextElement().toString();
				//세션 속성 이름의 속성 값을 가져오도록 session내장 객체의 getAttribute()메소드 작성
				value = session.getAttribute(name).toString();
				out.println("설정된 세션 이름 [" + i + "] : "+ name + "<br>");
				out.println("설정된 세션 갑 [" + i + "] : " + value + "<br>");
			}
			//세션에 저장된 세션 속성 이름 userID를 삭제
			session.removeAttribute("userID");
		%>
		<h4>------세션을 삭제한 후 ------</h4>
		<%
			en = session.getAttributeNames();
			
			i = 0;
			while(en.hasMoreElements()){
				i++;
				name = en.nextElement().toString();
				value = session.getAttribute(name).toString();
				out.println("설정된 세션 이름 [" + i + "] : "+ name + "<br>");
				out.println("설정된 세션 갑 [" + i + "] : " + value + "<br>");
			}
		%>
	</body>
</html>