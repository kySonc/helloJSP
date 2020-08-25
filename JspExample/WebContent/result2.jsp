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
		request.setCharacterEncoding("utf-8"); 
		String skor = request.getParameter("kor");
		String seng = request.getParameter("eng");
		String smat = request.getParameter("mat");
		String sname = request.getParameter("name");
		
		int kor = Integer.parseInt(request.getParameter("kor"));
		int eng = Integer.parseInt(request.getParameter("eng"));
		int mat = Integer.parseInt(request.getParameter("mat"));
		int sum = kor + eng + mat;
		double avg = Math.round((sum / 3.0)*100)/100.0;
		
		out.println("<table border='1'>");
		out.println("<tr><td>학생이름 :</td><td>" +sname+"</td></tr>");
		out.println("<tr><td>국어성적 :</td><td>" +kor+"</td></tr>");
		out.println("<tr><td>영어성적 :</td><td> " +seng+"</td></tr>");
		out.println("<tr><td>수학성적 :</td><td> " +smat+"</td></tr>");
		out.println("<tr><td>합계:</td><td> " +sum+"</td></tr>");
		out.println("<tr><td>평균:</td><td> " +avg+"</td></tr>");
		out.println("<tr><td colspa=\"2\"><a href=\"input2.html\">성적입력화면으로...</a> </td></tr>");
		out.println("</table>");
	%>
	<%--kor: <%=kor %> + eng: <%=eng %> mat:<%=mat %> = <%=sum %>
	<br>평균 : <%=avg %>
	<br><a href="input2.html">성적입력화면으로...</a>--%>
		
</body>
</html>