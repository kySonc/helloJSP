<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="java.io.*,java.util.*" %>
<html>
	<head>
		<title>Form Processing</title>
	</head>
	<body>
		<table border="1">
			<tr>
				<th>요청 파라미터 이름 </th>
				<th>요청 파라미터 값</th>
			</tr>
			<%
				request.setCharacterEncoding("UTF-8");
			
				Enumeration paramNames = request.getParameterNames();
				while(paramNames.hasMoreElements()){
					String name = (String)paramNames.nextElement();
					out.print("<tr><td>" + name + " </td>\n");
					String paramValue = request.getParameter(name);
					out.println("<td>" + paramValue + "</td></tr>\n");
				}
			%>
			<%--16행 폼 페이지에서 전송된 요청 파라미터를 받도록 request 내장 객체의 getParameterNames()작성 --%>
			<%--17행 폼 페이지에서 전송된 요청 파라미터가 없을 때까지 반복하도록 hasMoreElements()작성 --%>
			<%--18행 폼 페이지에서 전송된 요청 파라미터의 이름을 가져오도록 nextElement()작성 --%>
			<%--19행 폼 페이지에서 전송된 요청 파라미터를 이름을 출력하도로 out 내장 객체의 Print()작성 --%>
			<%--20행 폼 페이지에서 전송된 요청 파라미터의 값을 얻어오도록 18행에서 얻어온 요청 파라미터 이름으로 getParameter()작성 --%>
			<%--21행 폼 페이지에서 전송된 요청 파라미터의 값을 출력하도록 out 내장 객체의 println()작성 --%>
		</table>
	</body>
</html>