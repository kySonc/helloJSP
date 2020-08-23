<%@ page contentType= "text/html; charset=utf-8" %>
<%@ page import="java.util.Date" %>
<html>
	<head>
		<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
		<title>Welcome</title>
	</head>
	<body>
		<%--include 디렉티브 태그  navbar--%>
		<%@ include file = "menu.jsp" %>
		<%! String greeting = "웹 쇼핑몰에 오신 것을 환영합니다"; 
		String tagline = "Welcome to Web MarKet!"; %>
		<div class = "jumbotron">
			<div class = "container">
				<h1 class = "display-3">
					<%= greeting %>
				</h1>
			</div>
		</div>
		<div class = "contaniner">
			<div class = "text-center">
				<h3>
					<%= tagline %>
				</h3>
					<%--5초마다 JSP페이지가 갱신되도록 setIntHeader()메소드 추가 --%>
				<%
					response.setIntHeader("Refresh",5);
					Date day  = new java.util.Date();
					String am_pm;
					int hour = day.getHours();
					int minute = day.getMinutes();
					int second = day.getSeconds();
					if(hour / 12 == 0){
						am_pm = "AM";
					}else{
						am_pm = "PM";
						hour = hour - 12;
					}
					String CT = hour + " : " + minute + " : " + second + "  " + am_pm;
					out.println("현재 접속 시각: " + CT + "\n");
				%>
			</div>
			<hr>
		</div>
		<%--include 디렉티브 태그  footer--%>
		<%@ include file = "footer.jsp" %>
	</body>
</html>
