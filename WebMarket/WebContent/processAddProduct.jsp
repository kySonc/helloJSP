<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>

<%
	request.setCharacterEncoding("UTF-8");
	
	String productId = request.getParameter("productId");
	String name = request.getParameter("name");
	String unitPrice = request.getParameter("unitPrice");
	String description = request.getParameter("description");
	String manufacturer = request.getParameter("manufacturer");
	String category = request.getParameter("category");
	String unitsInStock = request.getParameter("unitsInStock");
	String condition = request.getParameter("condition");
	
	Integer price;
	
	if(unitPrice.isEmpty())
		price = 0;
	else
		price = Integer.valueOf(unitPrice);
	
	long stock;
	
	if(unitsInStock.isEmpty())
		stock = 0;
	else
		stock = Long.valueOf(unitsInStock);
	
	ProductRepository dao = ProductRepository.getInstance();
	
	Product newProduct = new Product();
	
	newProduct.setProductId(productId);
	newProduct.setPname(name);
	newProduct.setUnitPrice(price);
	newProduct.setDescription(description);
	newProduct.setManufacturer(manufacturer);
	newProduct.setCategory(category);
	newProduct.setUnitsInStock(stock);
	
	dao.addProduct(newProduct);
	
	response.sendRedirect("products.jsp");
%>
<%--08~15행 폼 페이지에서 입력된 상품아이디,상품명,...등의 값을 얻어오도록 요청 파라미터 getParameter()사용--%>
<%--17~22행 폼 페이지에서 상품 가격이 입력되지 않은 경우 0으로, 입력된 경우 정수형으로 변경--%>
<%--31~43행 폼 페이지에서 입력된 데이터를 저장하도록 ProductRepository클래스의 addProduct()메소드 호출--%>
<%--45행 products.jsp 페이지로 강제 이동--%>