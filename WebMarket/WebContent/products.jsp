<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%--기존 useBean 액션태그 삭제 --%>
<%@ page import="dao.ProductRepository"%>
<html>
	<head>
		<%--bootstrap.css 경로 변겅 --%>
		<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
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
		<%--ProductRepository클래스의 객체 변수 instance를 호출하는 getInstance()메소드를 작성 --%>
		<%--getAllProducts()메소드를 호출하여 반환 결과 값을 ArrayList<Product>객체 타입의 변수 listOfProducts에 저장 --%>
		<%
			ProductRepository dao = ProductRepository.getInstance();
			ArrayList<Product>listOfProducts = dao.getAllProducts();
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
					<img src="C:/upload/<%=product.getFilename() %>" style="width: 100%">
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