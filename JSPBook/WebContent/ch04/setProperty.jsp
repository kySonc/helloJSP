<%@ page contentType="text/html;charset=utf-8"%>
<html>
	<head>
		<title>Action Tag</title>
	</head>
	<body>
		<%--useBean03.JSP페이지를 불러와서 쓰겠다 --%>
		<jsp:include page="useBean03.jsp" />
		<%--홍길순 --%>	
	
		<%--useBean은 자바빈즈 person 경로 class 위치 request요청한다 --%>
		<jsp:useBean id="person" class="ch04.com.dao.Person" scope="request"/>
				
		<%--setProperty는 자바빈즈 person의 멤버변수 id 프로퍼티의 값(20182005)을 저장 --%>
		<jsp:setProperty name="person" property="id" value="20182006"/>
		
		<%--setProperty는 자바빈즈 person의 멤버변수 id 프로퍼티의 값(20182005)을 저장 --%>
		<jsp:setProperty name="person" property="name" value="길동홍"/>
		
		<p>아이디 : <% out.println(person.getId()); %>
		<p>이 름 : <% out.println(person.getName()); %>
		
		<%--useBean03.JSP페이지를 불러와서 쓰겠다 --%>
		<jsp:include page="useBean04.jsp" />
		<%--길동홍 홍길동 --%>
		
		<%--홍길동 --%>
		<p>아이디 : <%=person.getId() %>
		<p>이  름 : <%=person.getName() %>
				
		<%--useBean03.JSP페이지를 불러와서 쓰겠다 --%>
		<%--홍길동 --%>
		<jsp:include page="useBean03.jsp" />
		
	</body>
</html>