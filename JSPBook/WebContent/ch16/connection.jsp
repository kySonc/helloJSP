<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Database</title>
	</head>
	<body>
		<%	
			//Connection 객체를 null로 초기화하도록 작성
			Connection conn = null;
			//데이터베이스 이름을 포함한 URL,사용자 계정, 비밀번호를 작성
			try{
				String url = "jdbc:mysql://localhost:3306/JSPBookDB";
				String user = "root";
				String password = "1234";
				//데이터 베이스와 연동하기 위해JDBC를 로딩하도록 Class.forName()메소드를 작성
				Class.forName("com.mysql.jdbc.Driver");
				//DriverManager객체로 부터 Connection객체를 얻어오도록getConnection()메소드 작성
				conn =DriverManager.getConnection(url, user, password);
				//데이터베이스 커넥션이 제대로 연결되면 출력하도록 out.println()메소드 작성
				out.println("데이터베이스 연결이 성공했습니다.");
			//예외가 발생하면 예외 상황을 처리하도록catch구문을 작성	
			}catch(SQLException ex){
				out.println("데이터베이스 연결이 실패했습니다.");
				out.println("SQLException: " + ex.getMessage());
			//생성된 Connection 객체를 해제하도록close()메소드를 작성	
			}finally{
				if(conn != null)
					conn.close();
			}
		%>
	</body>
</html>