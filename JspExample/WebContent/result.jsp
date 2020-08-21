<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산결과</title>
</head>
<body>
	<%
		int kor = Integer.parseInt(request.getParameter("kor"));
		int eng = Integer.parseInt(request.getParameter("eng"));
		int sum = kor + eng;
	%>
	kor: <%=kor %> + eng: <%=eng %> = <%=sum %>
	<br><a href="input.html">성적입력화면으로...</a>
</body>
</html>