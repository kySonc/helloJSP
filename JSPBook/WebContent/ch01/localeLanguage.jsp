<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Locale" %>
<%
	response.setContentType("text/html");
	response.setHeader("Content-Language", "es");
	String title = "Espa&ntilde;ol";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><% out.print(title); %></title>
</head>
<body>
	<p>Idioma : Espa&ntilde;ol</p>
	<P>&iexcl;Hola Mundo!</P>
</body>
</html>