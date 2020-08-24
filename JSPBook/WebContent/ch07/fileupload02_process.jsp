<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import= "com.oreilly.servlet.*" %>
<%@ page import= "com.oreilly.servlet.multipart.*" %>
<%@ page import= "java.util.*" %>
<%@ page import= "java.io.*" %>

<html>
	<head>
		<title>File Upload</title>
	</head>
	<body>
		<%--MultipartRequest클래스를 생성하도록 서버 파일 저장 경로는 C:\upload\,--%>
		<%--파일의 최대크기는 5MB(5X1,024X1,024B)--%>
		<%--파일명의 인코딩 유형은 utf-8--%>
		<%--서버에 동일한 파일이 존재하면 전송된 파일명 뒤에 숫자를 덧붙여 파일명이 중복되지 않도록 DefaultFileRenamePolicy()--%>
		<%
			MultipartRequest multi = new MultipartRequest(request, "C:\\upload", 5*1024*1024, "utf-8", new DefaultFileRenamePolicy());
		
			String name1 = multi.getParameter("name1");
			String subject1 = multi.getParameter("subject1");
			
			
			String name2 = multi.getParameter("name2");
			String subject2 = multi.getParameter("subject2");
			
			String name3= multi.getParameter("name3");
			String subject3 = multi.getParameter("subject3");
			
			Enumeration files = multi.getFileNames();
			
			String file1 = (String)files.nextElement();
			String filename1 = multi.getFilesystemName(file1);
			
			String file2 = (String)files.nextElement();
			String filename2 = multi.getFilesystemName(file2);
			
			String file3 = (String)files.nextElement();
			String filename3 = multi.getFilesystemName(file3);
		%>	
		<table border="1">	
			<tr>
				<th width="100">이름</th>
				<th width="100">제목</th>
				<th width="100">파일</th>
			</tr>
			<%
				out.print("<tr><td>" + name1 + "</td>");
				out.print("<td>" + subject1 + "</td>");
				out.println("<td>" + filename1 + "</td></tr>\n");
				
				out.print("<tr><td>" + name2 + "</td>");
				out.print("<td>" + subject2 + "</td>");
				out.println("<td>" + filename2 + "</td></tr>\n");
				
				out.print("<tr><td>" + name3 + "</td>");
				out.print("<td>" + subject3 + "</td>");
				out.println("<td>" + filename3 + "</td></tr>\n");
			%>	
		<%--19행~27행 폼 페이지에서 입력된 이름, 제목 값을 얻어오도록 요청 파라미터 이름으 설정하여  MultipartRepuest 객체타입의 getParameter()메소드 작성--%>
		<%--29행 폼 페이지에서 전송되어 서버에 업로드된 여러 개의 파일을 가져오도록 MultipartRepuest 객체타입의  getFileNames()메소드 작성하여 Enumeration 객체 타입에 저장--%>
		<%--17행 Enumeration 객체 타입에 저장된 파일을 하나씩 가져오도록 nextElement()메소드 작성,해당 파일명을 가져오도록 MultipartRepuest 객체타입의 getFilesystemName()메소드 작성--%>
		<%--30행 폼 페이지에서 전송된 파일의 콘텐츠 유형을 가져오도록 MultipartRequest 객체 타입의 getContentType()메소드 작성--%>
		<%--47~57행에서 저장된 각각의 값을 출력하도록 out 내장 객체의 println()메소드 작성--%>
		</table>
	</body>
</html>