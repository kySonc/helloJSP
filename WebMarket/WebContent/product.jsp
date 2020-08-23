<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="dto.Product"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />
<html>
	<head>
		<link rel = "stylesheet" 
		href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"> 
		<title>상품 상세 정보</title>
	</head>
	<body>
		<jsp:include page="menu.jsp" />
		<div class="jumbotron">
			<div class="container">
				<h1 class="display-3">상품 정보</h1>
			</div>
		</div>
		<%--상품 목록 페이지의 상품 아이디 전송받도록 getParameter()작성 --%>
		<%--useBean의 id속성 값을 통해 ProductRepository클래스의 getProductById()호출 --%>
		<%--반환된 결과 값을 Product객체 타입의 변수 product에 저장 --%>
		<%
			String id = request.getParameter("id");
			Product product = productDAO.getProductById(id);
		%>
		
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<%--product에 저장된 상품명,상품 상세 정보 상품코드...출력하도록 표현문 작성 --%>
					<h3><%=product.getPname() %></h3>
					<p><%=product.getDescription() %>
					<p><b>상품 코드 : </b><span class="badge badge-danger">
					<%=product.getProductId() %></span>
					<p><b>제조사</b> : <%=product.getManufacturer() %>
					<p><b>분류</b> : <%=product.getCategory() %>
					<p><b>재고 수</b> : <%=product.getUnitsInStock() %>
					<h4><%=product.getUnitPrice() %>원</h4>
					<%--상품주문/상품 목록 버튼 작성 --%>
					<P><a href="#" class="btn btn-info">상품 주문 &raquo;</a>
					<a href="./products.jsp" class="btn btn-secondary">상품 목록&raquo;</a>
				</div>
			</div>
			<hr>
		</div>
		<jsp:include page="footer.jsp"/>
	</body>
</html>