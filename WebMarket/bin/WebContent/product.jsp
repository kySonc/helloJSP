<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="dto.Product"%>
<%-- 기존에 작성된 useBean 액션태그 삭제 --%>
<%@ page import="dao.ProductRepository"%>
<html>
	<head>
		<link rel = "stylesheet" href ="./resources/css/bootstrap.min.css" /> 
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
		<%--ProductRepository 클래스의 객체 변수 instance를 호출하는 getInstance()메소드를 작성--%>
		<%--이를 통해 getProuductById()메소드를 호출하여 반환 결과 값을 Product 객체 타입의 변수 product에 저장--%>
		<%
			String id = request.getParameter("id");
			ProductRepository dao = ProductRepository.getInstance();
			Product product = dao.getProductById(id);
		%>
		
		<div class="container">
			<div class="row">
				<div class="col-md-5">
					<%--C:\upload 폴더에 저장된 상품 이미지를 출력하기위해 추가 --%>
					<img src="c:/upload/<%=product.getFilename() %>" style="width:100%">
				</div>
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