<%@ page contentType="text/html;charset=utf-8"%>
<html>
	<head>
		<title>Action Tag</title>
	</head>
	<body>
		<jsp:useBean id="person" class="ch04.com.dao.Person" ></jsp:useBean>
		<jsp:setProperty name="person" property="id" value= "20182008"/>
		<jsp:setProperty name="person" property="name" value="강호동"/>
		<p>아이디 : <jsp:getProperty name="person" property="id"/>
		<p>이  름 : <jsp:getProperty name="person" property="name"/> 
	</body>
</html>