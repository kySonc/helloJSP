<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>result2</title>
</head>
<body>
	<%
		String skor = request.getParameter("kor");
		int kor = Integer.parseInt(request.getParameter("kor"));
		int eng = Integer.parseInt(request.getParameter("eng"));
		int sum = kor + eng;
	%>
	kor: <%=kor %> + eng: <%=eng %> = <%=sum %>
	<br><a href="input2.html">성적입력화면으로...</a>
</body>
</html>