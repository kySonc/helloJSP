<%@page import="java.util.Enumeration"%>
<%@ page contentType="text/html;charset=utf-8"%>
<html>
	<head>
		<title>Session</title>
	</head>
	<body>
		<%
			String name;
			String value;
			//세션에 저장된 모든 세션 속성 이름을 가져오도록 session내장 객체의 getAttribute()메소드 작성
			Enumeration en = session.getAttributeNames();
			int i = 0;
			//Enumeration객체의 hasMoreElements()메소드를 통해 저장된 세션 속성 이름이 있을 때까지 반복하도록 while문 작성
			while(en.hasMoreElements()){
				i++;
				//세션 속성 이름을 가져오도록 Enumeration객체의 nextElement()메소드 작성
				name = en.nextElement().toString();
				//세션 속성 이름의 속성 값을 가져오도록 session내장 객체의 getAttribute()메소드 작성
				value = session.getAttribute(name).toString();
				//세션 속성 이름과 속성 값을 출력
				out.println("설정된 세션의 속성 이름 [" + i + "] : " + name + "<br>");
				out.println("설정된 세션의 속성 값 [" + i + "] : " + value + "<br>");
			}
		%>
	</body>
</html>