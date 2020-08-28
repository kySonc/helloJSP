<%@ page contentType="text/html;charset=utf-8"%>
<%--MultipartRequest 클래스를 사용하도록 page 디렉티브 태그의 import 작성 --%>
<%@ page import="com.oreilly.servlet.*" %>
<%--DefaultFileRenamePolicy 클래스를 사용하도록 page 디렉티브 태그의 import 작성 --%>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%--Enumeration 클래스 사용 --%>
<%@ page import="java.util.*" %>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>


<%
	//상품 이미지 파일을 업로드하기
	request.setCharacterEncoding("UTF-8");

	String filename ="";
	String realFolder = "C:\\upload"; //웹 애플리케션상의 절대 경로
	int maxSize = 5 * 1024 * 1024;	//최대 업로드될 파일의 크기5MB
	String encType = "utf-8";	//인코딩 유형
	
	//MultipartRequest 객체 생성/ 매개 변수로 DefaultFileRenamePolicy 클래스 설정
	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
	
	//폼 페이지에서 입력된 요청 파라미터 값을 얻어오도록 요청 파라미터의 이름을 설정하여 MultipartRequest객체 타입의 getParameter()메소드 작성
	String productId = multi.getParameter("productId");
	String name = multi.getParameter("name");
	String unitPrice = multi.getParameter("unitPrice");
	String description = multi.getParameter("description");
	String manufacturer = multi.getParameter("manufacturer");
	String category = multi.getParameter("category");
	String unitsInStock = multi.getParameter("unitsInStock");
	String condition = multi.getParameter("condition");
	
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
	
	//폼 페이지에서 전송된 요청 파라미터 중 파일을 받도록 MultipartRequest 객체 탑의 getFileNames()메소드 작성
	Enumeration files = multi.getFileNames();
	//폼 페이지에서 전송된 요청 파라미터 중 파일을 받도록 Enumeration 객체 타입의 nextElement()메소드 작성
	String fname = (String)files.nextElement();
	//폼 페이지에서 전송되어 서버에 업로드된 파일을 가져오도록 MultipartRequest 객체 타입의 getFilesystemName()메소드 작성
	String fileName = multi.getFilesystemName(fname);
	
	ProductRepository dao = ProductRepository.getInstance();
	
	Product newProduct = new Product();
	
	newProduct.setProductId(productId);
	newProduct.setPname(name);
	newProduct.setUnitPrice(price);
	newProduct.setDescription(description);
	newProduct.setManufacturer(manufacturer);
	newProduct.setCategory(category);
	newProduct.setUnitsInStock(stock);
	newProduct.setCondition(condition);
	//폼 페이지에서 전송된 요청 파라미터 중 파일 이름을 저장하도록 Product 객체 타입의 setFilename()메소드를 작성
	newProduct.setFilename(fileName);
	
	dao.addProduct(newProduct);
	
	response.sendRedirect("products.jsp");
%>
