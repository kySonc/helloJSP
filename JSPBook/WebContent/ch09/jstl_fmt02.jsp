<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Internationalization</title>
	</head>
	<body>
		<p> 숫자 : <fmt:formatNumber value="3200100" />
		<%--천단위마다 구분 기호( , ) --%>
		<p><fmt:formatNumber value="3200100" type="number"/>
		<%--천단위마다 구분 기호( , ) 없이 표현하도록 false--%>
		<p><fmt:formatNumber value="3200100" type="number" groupingUsed="false" />
		<%--통화 형식 표현 currency 천단위마다 구분 기호( , ) 표현하도록 true--%>
		<p><fmt:formatNumber value="3200100" type="currency" groupingUsed="true" />
		<%--통화 형식 표현 currency 통화 기호는 앰퍼샌드(&)--%>
		<p><fmt:formatNumber value="3200100" type="currency" currencySymbol="&" />
		<%--설정된 숫자를 펴센트 형식으로 표현--%>
		<p><fmt:formatNumber value="0.45" type="percent"/>
		<%--설정된 숫자를 최대 열 자리, 소수점 둘째 자리까지 표현--%>
		<p><fmt:formatNumber value="3200100" minIntegerDigits="10" minFractionDigits="2"/>
		<%--설정된 숫자를 '.000'형식으로 표현--%>
		<p><fmt:formatNumber value="3200100.45" pattern=".000"/>
		<%--설정된 숫자를 '#,#00.0#'형식으로 표현--%>
		<p><fmt:formatNumber value="3200100.456" pattern="#,#00.0#"/>
	</body>
</html>