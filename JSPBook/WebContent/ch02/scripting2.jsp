<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Scripting Tag</title>	
	</head>
	<%-- ���� �±� [�޼ҵ�] --%>
	<%-- �������� count�� 0���� �ʱ�ȭ --%>
	<%! int count = 0; %>
	<body>
		Page Count is
		<%--��ũ��Ʋ�� �±�--%>
		<%--�������� count�� 1���� ��Ŵ--%>
		<%
			out.println(++count); 
		%>
	</body>
</html>