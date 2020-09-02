<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
	<head>
		<title>Database SQL</title>
	</head>
	<body>
		<%@ include file="dbconn.jsp" %>
		<%
			request.setCharacterEncoding("utf-8");
		
			String id = request.getParameter("id");
			String passwd = request.getParameter("passwd");
			String name = request.getParameter("name");
			//Statement 객체를 null로 초기화 하도록 작성
			Statement stmt = null;
			
			try{//member 테이블의 각 필드에 폼 페이지에서 전송된 아이디,비밀번호,이름을 삽입하도록 INSERT문을 작성
				String sql = "INSERT INTO Member(id, passwd, name) VALUES('" + id + "','" + passwd + "','" + name +"')";
				//Statement객체를 생성하도록 작성
				stmt = conn.createStatement();
				//INSERT문을 실행하도록 Statement객체의 executeUpdate()메소드를 작성
				stmt.executeUpdate(sql);
				out.println("Member 테이블 삽입이 성공했습니다.");
			}catch(SQLException ex){
				out.println("Member 테이블 삽입이 실패했습니다.<br>");
				out.println("SQLException: " + ex.getMessage());
			}finally{ //생성한 Starement 객체와 Connection객체를 해제
				if(stmt != null)
					stmt.close();
				if(conn != null)
					conn.close();
			}
			
		%>
	</body>
</html>