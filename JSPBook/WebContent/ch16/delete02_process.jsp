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
			//ResultSet, PreparedStatement 객체를 null로 초기화하도록 작성
			ResultSet rs = null;
			PreparedStatement pstmt = null;
			
			try{
				//member테이블에서 폼 페이지로부터 전송된 id와 일치하는 레코드를 찾아 해당 id,passwd 필드 값을 가져오도록 SELECT문을 작성
				String sql = "select id, passwd from member where id = ?";
				//Preparedment객체를 생성하도록 prepareStatement()메소드를 작성
				pstmt = conn.prepareStatement(sql);
				//21행의 물음표에 해당하는 값을 설정하도록 setString()메소드를 작성
				pstmt.setString(1,id);
				//SELECT문을 실행하도록 PreparedStatement객체의 executeQurey()메소드를 작성
				rs = pstmt.executeQuery();
								
				//SELECT문으로 가져온 레코드가 있으면 실행
				if(rs.next()){
					String rId = rs.getString("id");
					String rPasswd = rs.getString("passwd");
					
					if(id.equals(rId) && passwd.equals(rPasswd)){
						//member테이블에서 폼 페이지로부터 전송된 id와 일치하는 레코드를 찾아 삭제하도록 DELETE문을 작성
						sql = "delete from member where id = ? and passwd = ?";
						//PreparedStatement객체를 생성하도록 prepareSatement()메소드를 작성
						pstmt = conn.prepareStatement(sql);
						//36행의 물음표에 해당하는 값을 설정하도록setString()메소드를 작성
						pstmt.setString(1, id);
						pstmt.setString(2, passwd);
						//SELECT문을 실행하도록 PreparedStatement객체의 executeUpdate()메소드를 작성
						pstmt.executeUpdate();
						out.println("Member 테이블을 삭제 했습니다.");
					}else{
						out.println("일치하는 비밀번호가 아닙니다");		
					}
				}else{
					out.println("Member 테이블에 일치하는 아이디가 없습니다.");
				}	
			}catch(SQLException ex){
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
	</body>
</html>