<%@ page contentType="text/html;charset=utf-8"%>
<html>
	<head>
		<title>Validation</title>
	</head>
		<!-- 자바스크립트로 폼 페이지에 입력 항목의 데이터를 검사한느 핸들러 함수 checkLogin()작성 -->
		<script type="text/javascript">
			<!--폼 페이지에 입력한 아이디와 비밀번호 값을 출력-->
			function checkLogin(){
				var form=document.loginForm;
				if(form.id.value == ""){
					alert("아이디를 입력해주세요.");
					form.id.foucs();
					return false;
				}else if(form.passwd.value == ""){
					alert("비밀번호를 입력해주세요");
					form.passwd.focus();
					return false;
				}
				form.submit();
			}
		</script>
	<body>
		<!--name 속성 값이 loginForm인 폼 문을 작성 -->
		<form name="loginForm" action = "validation02_process.jsp" method="post">
			<p>아 이 디 : <input type="text" name="id">
			<p>비밀번호 : <input type="password" name="passwd">
			<!--<전송>을 클릭하면 핸들러 함수 checkLogin()실행되도록 onclick속성을 작성 -->
			<p><input type="button" value="전송" onclick="checkLogin()">
		</form>
	</body>
</html>