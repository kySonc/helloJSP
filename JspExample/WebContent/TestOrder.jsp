<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.io.*, java.util.*"%>
<html>
	<head>
		<title>주문 내역</title>
	</head>
	<style>
	table{
		width:1000px;
	}
	.class{
		background:red;
	}
	</style>
	<body>
		<table border="1">
			<tr>
				<th>주문 명</th>
				<th>주문 내역</th>
			</tr>
			<%
				request.setCharacterEncoding("UTF-8");
			
				Enumeration paramNames = request.getParameterNames();
				while (paramNames.hasMoreElements()){
					String name = (String) paramNames.nextElement();
					out.print("<tr><td>" + name + "</td>\n");
					String paramValue = request.getParameter(name);
					out.print("<td>" + paramValue + "</td></tr>\n");
				}
			%>
			<%
				int bbsc = Integer.parseInt(request.getParameter("Black-bean-sauce noodles"));
				int ks = Integer.parseInt(request.getParameter("Kimchi stew"));
				int s = Integer.parseInt(request.getParameter("Sushi"));
				int d = Integer.parseInt(request.getParameter("drink"));
			%>
			<tr>
				<th>주문 품목</th>
				<th>품목 금액</th>
			</tr>
			<tr>
				<th>짜장면</th>
				<th><%=bbsc*5000 %></th>
			</tr>
			<tr>
				<th>김치찌개</th>
				<th><%=ks*5000 %></th>
			</tr>
			<tr>
				<th>초밥</th>
				<th><%=s*5000 %></th>
			</tr>
			<tr>
				<th>음료수</th>
				<th><%=d*2000 %></th>
			</tr>
			<tr class="class">
				<th>총 금액</th>
				<th><%=bbsc*5000+d*2000+ks*5000+s*5000+d*2000 %></th>
			</tr>
		</table>
	</body>
</html>