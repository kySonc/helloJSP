<%@ page contentType="text/html;charset=utf-8" %>
<html>
	<head>
		<title>File Upload</title>
	</head>
	<body>
		<%--파일 업로드를 위한 폼 태그에 method 속성 값은 post로, enctype 속성 값은 multipart/form-data로 작성--%>
		<%--업로드된 파일을 처리하기 위한 action 속성 값을 작성--%>
		<form name="fileForm" method="post" enctype="multipart/form-data" action="fileupload02_process.jsp">
			<p>이 름1 : <input type="text" name="name1">
			       제 목1 : <input type="text" name="subject1">
			       파 일1 : <input type="file" name="filename1">
			
			<p>이 름2 : <input type="text" name="name2">
			       제 목2 : <input type="text" name="subject2">
			       파 일2 : <input type="file" name="filename2">
			
			<p>이 름3 : <input type="text" name="name3">
			       제 목3 : <input type="text" name="subject3">
			       파 일3 : <input type="file" name="filename3">
			<p><input type="submit" value="파일 올리기">
		</form>
	</body>
</html>