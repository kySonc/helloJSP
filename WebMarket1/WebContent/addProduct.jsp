<%@ page contentType="text/html;charset=utf-8"%>
<html>
	<head>
		<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
		<!-- 폼 페이지에 입력 항목의 데이터를 검사하는 핸들러 함수가 저장된 자바스크립트 파일를 가져오도록 작성 -->
		<script type="text/javascript" src="./resources/js/validation.js"></script>
		<title>상품 등록</title>
	</head>
	<body>
		<jsp:include page="menu.jsp"/>
		<div class="jumbotron">
			<div class="container">
				<h1 class="display-3">상품 등록</h1>
			</div>
		</div>
		<div class="container">
			<%--입력 양식에 입력된 데이터를 서버로 전송하여 폼 데이터를 처리하도록 form태그의 action 속성값,method 방식을 작성 --%>
			<%--addProduct.jsp 파일에 부트스트랩 css를 포함하고 상품 이미지 파일을 업로드하기 위해 enctype 작성 --%>
			<form name="newProduct" action="./processAddProduct.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
				<div class="form-group row">
					<label class="col-sm-2">상품 코드</label>
					<div class="col-sm-3">
						<%--상품 아이디 입력받도록 input태그의 type 속성값을 text로 작성하고 name속성 값을 productId로 작성 --%>
						<input type="text" id="productId" name="productId" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">상품명</label>
					<div class="col-sm-3">
						<input type="text" id="name" name="name" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">가격</label>
					<div class="col-sm-3">
						<input type="text" id="unitPrice" name="unitPrice" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">상세 정보</label>
					<div class="col-sm-5">
						<%--상품 설명 값을 여러 줄로 입력받도록 너비와 높이를 50/2로준다 --%>
						<textarea name="description" cols="50" rows="2" class="form-control"></textarea>
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">제조사</label>
					<div class="col-sm-3">
						<input type="text" name="manufacturer" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">분류</label>
					<div class="col-sm-3">
						<input type="text" name="category" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">재고 수</label>
					<div class="col-sm-3">
						<input type="text" id="unitsInStock" name="unitsInStock" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">상태</label>
					<div class="col-sm-5">
						<%--상품 상태 값 중 하나만 선택 입력받도록 input태그 3개의 type속성 값을 radio로 작성 name 속성 값을 condition으로 작성 --%>
						<input type="radio" name="condition" value="New">신규 제품
						<input type="radio" name="condition" value="Old">중고 제품
						<input type="radio" name="condition" value="Refurbished">재생 재품
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">이미지</label>
					<div class="col-sm-5">
						<%--파일을 입력 받도록 input 태그의 type속성 갑을 file로 작성 --%>
						<input type="file" name="productImage" class="form-control" >
					</div>
				</div>
				<div class="form-group row">
					<div class="col-sm-offset-2 col-sm-10">
						<!-- <등록>을 클릭하면 핸들러 함수 CheckAddProduct()가 실행되도록 onclick속성을 작성 -->
						<input type="button" class="btn btn-primary" value="등록" onclick="CheckAddProduct()">
					</div>
				</div>
			</form>
		</div>
	</body>
</html>
