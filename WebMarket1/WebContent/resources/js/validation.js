fuction CheckAddProduct(){
	
	var productId = document.getElementById("productId");
	var name = document.getElementById("name");
	var unitPrice = document.getElementById("unitPrice");
	var unitInStock = document.getElementById("unitsInStock");
	
	//상품 아이디 체크
	//입력된 상품 아이디가 정규 표현식과 일치하는지 검사
	//P로 시작하고 숫자를 조합하여 문자 길이가 5~12자
	//정규 표현식과 일치 하지 않으면 오류 페이지를 출력
	if(!check(/^p[0-9]{4,11}$/, productId, "[상품코드]\nP와 숫자를 조합하여 5~12까지 입력하세요\n첫 글자는 반드시 P로 시작하세요"))
	return false;
	
	//상품명 체크
	//입력된 상품명의 문자길이가 4~12인지 검사
	if(name.value.length < 4 || name.value.length > 12){
		alert("[상품명]\n최소 4자에서 최대 12까지 입력하세요");
		name.select();
		name.focus();
		return false;
	}
	
	//상품 가격 체크
	if(unitPrice.value.length == 0 || isNaN(unitPrice.value)){
		alert("[가격]\n숫자만 입력하세요");
		unitPrice.select();
		unitPrice.focus();
		return false();
	}
	
	//입력된 상품 가격이 음수인지 검사
	//정규 표현식은 반드시 숫자이고 소수점 둘째 자리까지 가능
	if(unitPrice.value < 0){
		alert("[가격]\n음수는 입력할 수 없습니다");
		unitPrice.select();
		unitPrice.focus();
		return false;
	}else if (!check(/^\d+(?:[.]?[\d]?[\d])?$/, unitPrice, "[가격]\n소수점 둘째 자리까지만 입력하세요"))
		return false;
		
	//재고 수 체크
	//입력된 상품 재고 수가 숫자가 아닌지를 검사
	if(isNaN(unitsInStock.value)){
		alert("[재고 수]\n숫자만 입력하세요");
		unitsInStock.select();
		unitsInStock.focus();
		return false;
	}
	//입력 항목에 대해 정규 표현식으로 검사하여 오류가 있으면 오류 출력하고 해당 입력 항목에 커서가 놓이도록 check()함수 작성
	function check(regExp, e, msg){
		if(regExp.test(e.value)){
			return true;
		}
		alert(msg);
		e.select();
		e.focus();
		return false;
	}
	
	document.newProduct.submit()
}