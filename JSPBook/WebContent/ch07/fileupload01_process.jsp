<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import= "com.oreilly.servlet.*" %>
<%@ page import= "com.oreilly.servlet.multipart.*" %>
<%@ page import= "java.util.*" %>
<%@ page import= "java.io.*" %>

<%--MultipartRequest클래스를 생성하도록 서버 파일 저장 경로는 C:\upload\,--%>
<%--파일의 최대크기는 5MB(5X1,024X1,024B)--%>
<%--파일명의 인코딩 유형은 utf-8--%>
<%--서버에 동일한 파일이 존재하면 전송된 파일명 뒤에 숫자를 덧붙여 파일명이 중복되지 않도록 DefaultFileRenamePolicy()--%>
<%
	MultipartRequest multi = new MultipartRequest(request, "C:\\upload", 5*1024*1024, "utf-8", new DefaultFileRenamePolicy());

	Enumeration params = multi.getParameterNames();
	
	while (params.hasMoreElements()){
		String name = (String)params.nextElement();
		String value = multi.getParameter(name);
		out.println(name + " = " + value + "<br>");
	}
	
	out.println("-------------------------------------<br>");
	
	Enumeration files = multi.getFileNames();
	
	while (files.hasMoreElements()){
		String name = (String)files.nextElement();
		String filename = multi.getFilesystemName(name);
		String original = multi.getOriginalFileName(name);
		String type = multi.getContentType(name);
		File file = multi.getFile(name);
		
		out.println("요청 파라미터 이름 : " + name + "<br>");
		out.println("실제 파일 이름 : " + original + "<br>");
		out.println("저장 파일 이름 : " + filename + "<br>");
		out.println("파일 콘텐츠 유형 : " + type + "<br>");
		
		if(file != null){
			out.println(" 파일 크기 : " + file.length());
			out.println("<br>");
		}
		
		
	}
%>
<%--14행 폼 페이지에서 전송된 요청 파라미터를 받도록 MultipartRepuest 객체타입의 getParameterNames()메소드 작성--%>
<%--16행 폼 페이지에서 전송된 요청 파라미터가 없을 때까지 반복하도록 hasMoreElements()메소드 작성--%>
<%--17행 폼 페이지에서 전송된 요청 파라미터의 이름을 가져오도록 nextElement()메소드 작성--%>
<%--17행에서 얻어온 요청 파라미터의 이름으로 MultipartRequest 객체 타입의 getParameter()메소드 작성--%>
<%--19행 폼에 페이지에서 전송된 요청 파라미터의 값을 출력하도록 out 내장 객체의 println()메소드 작성--%>

<%--24행 폼 페이지에서 전송된 요청 파라미터를 받도록 MultipartRepuest 객체타입의 getFileNames()메소드 작성--%>
<%--26행 폼 페이지에서 전송된 요청 파라미터가 없을 때까지 반복하도록 hasMoreElements()메소드 작성--%>
<%--27행 폼 페이지에서 전송된 요청 파라미터의 이름을 가져오도록 nextElement()메소드 작성--%>
<%--27행에서 얻어온 요청 파라미터의 이름으로 MultipartRequest 객체 타입의 getFilesystemName()메소드 작성--%>
<%--29행 폼에 페이지에서 전송된 파일이 서버에 저장되기 전의 파일 이름을 가져오도록 MultipartRequest 객체 타입의 getOriginalFileName()메소드 작성--%>
<%--30행 폼 페이지에서 전송된 파일의 콘텐츠 유형을 가져오도록 MultipartRequest 객체 타입의 getContentType()메소드 작성--%>
<%--33~40행에서 저장된 각각의 값을 출력하도록 out 내장 객체의 println()메소드 작성--%>
