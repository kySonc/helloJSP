<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
	<head>
		<title>Database SQL</title>
	</head>
	<body>
		<%@ include file="dbconn.jsp" %>
		<table width="300" border="1">
			<tr>
				<th>아이디</th>
				<th>비밀번호</th>
				<th>이름</th>
			</tr>
			<%	
				//ResultSet, Statement 객체를 null로 초기화
				ResultSet rs = null;
				PreparedStatement pstmt = null;
				
				try{
					//member테이블의 모든 필드 값을 가져오도록 SELECT문을 작성
					String sql = "select*from member";
					pstmt = conn.prepareStatement(sql);
					//SELECT문을 실행하도록 Statement객체의 executeQuery()메소드를 작성
					rs = pstmt.executeQuery(sql);
					//SELECT 문으로 가져온 레코드가 있을 때까지 id,passwd,name필드 값을 가져와 출력하도록 반복해서 실행
					while(rs.next()){
						String id = rs.getString("id");
						String pw = rs.getString("passwd");
						String name = rs.getString("name");
			%>
			<tr>
				<td><%=id %></td>
				<td><%=pw %></td>
				<td><%=name %></td>
			</tr>
			<%
					}
				}catch(SQLException ex){
					out.println("Member 테이블 호출이 실패했습니다.<br>");
					out.println("SQLException: " + ex.getMessage());
				}finally{
					//생성한 객체를 해제
					if(rs != null)
						rs.close();
					if(pstmt != null)
						pstmt.close();
					if(conn != null)
						conn.close();
				}
			%>
		</table>
	</body>
</html>