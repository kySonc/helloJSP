<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session"/>
<html>
	<head>
		<link rel="stylesheet"
			href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
		<title>상품 목록</title>
	</head>
	<body>
		<%--머릿글 페이지 불러오기 --%>
		<jsp:include page="menu.jsp"/>
		<div class="jumbotron">
			<div class="container">
				<h1 class="display-3">상품 목록</h1>
			</div>
		</div>
		<%--dao.ProductRepository의 getAllProducts메소드 호출 반환된 결과 값을 listOfProducts에 저장 --%>
		<%
			ArrayList<Product>listOfProducts = productDAO.getAllProducts();
		%>
		<div class="container">
			<div class="row" align="center">
			<%--상품목록 개수만큼 실행하도록 반복문 작성 --%>
			<%--for을 이용해 product변수에 상품목록 저장 --%>
				<%
					for(int i = 0; i < listOfProducts.size(); i++){
						Product product = listOfProducts.get(i);	
				%>
				<%-- product에 저장된 상품 목록의 내역 출력 --%>
				<div class="col-md-4">
					<h3><%= product.getPname()%></h3>
					<p><%= product.getDescription()%>
					<p><%= product.getUnitPrice()%>
				<%--상품 상세 버튼 만들기--%>
					<p><a href="./product.jsp?id=<%=product.getProductId()%>" 
						class="btn btn-secondary" role="button">상세 정보 &raquo;></a>	
				</div>
				<%
					}
				%>
			</div>
			<hr>
		</div>
		<%--바닥글 페이지 불러오기 --%>
		<jsp:include page="footer.jsp" />
	</body>
</html>