<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<html>
	<head>
		<title>File Upload</title>
	</head>
	<body>
		<%
			String fileUploadPath = "C:\\upload";
		
			DiskFileUpload upload = new DiskFileUpload();
			
			List items = upload.parseRequest(request);
			
			Iterator params = items.iterator();
			
			while (params.hasNext()){
				FileItem fileItem = (FileItem) params.next();
				
				if(!fileItem.isFormField()){
					String fileName = fileItem.getName();
					fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
					File file = new File(fileUploadPath + "/" + fileName);
					fileItem.write(file);
				}
			}
		%>
		<%--11행 폼 페이지에서 전송된 파일을 저장할 서버의 경로를 작서 --%>
		<%--15행 폼 페이지에서 전송된 요청 파라미터를 전달 받도록 DiskFileUpload 객체 타입의 parseRequest()메소드 작성 --%>
		<%--17행 폼 페이지에서 전송된 요청 파라미터를 Iterator클래스로 변환 --%>
		<%--19행 폼 페이지에서 전송된 요청 파라미터가 없을 때까지 반복하도록 Iterator 객체 타입의 hasNext()메소드 작성 --%>
		<%--20행 폼 페이지에서 전송된 요청 파라미터의 이름을 가져오도록 Iterator 객체 타입의 Next()메소드 작성 --%>
		<%--21~26행 폼 페이지에서 전송된 요청 파라미터가 파일이면 서버의 파일 저장 경로에 업로드 파일을 저장하도록 작성 --%>
	</body>
</html>