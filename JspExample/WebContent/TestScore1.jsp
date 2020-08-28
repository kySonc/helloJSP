<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>result2</title>
</head>
<body >
	<%
		request.setCharacterEncoding("utf-8");
	
		String skor1 = request.getParameter("kor1");
		String seng1 = request.getParameter("eng1");
		String smat1 = request.getParameter("mat1");
		String sname1 = request.getParameter("name1");
				
		int kor1 = Integer.parseInt(request.getParameter("kor1"));
		int eng1 = Integer.parseInt(request.getParameter("eng1"));
		int mat1 = Integer.parseInt(request.getParameter("mat1"));
		int sum1 = kor1 + eng1 + mat1;
		double avg1 = Math.round((sum1 / 3.0)*100)/100.0;
					
		String skor2 = request.getParameter("kor2");
		String seng2 = request.getParameter("eng2");
		String smat2 = request.getParameter("mat2");
		String sname2 = request.getParameter("name2");
		
		int kor2 = Integer.parseInt(request.getParameter("kor2"));
		int eng2 = Integer.parseInt(request.getParameter("eng2"));
		int mat2 = Integer.parseInt(request.getParameter("mat2"));
		int sum2 = kor2 + eng2 + mat2;
		double avg2 = Math.round((sum2 / 3.0)*100)/100.0;
		
		String skor3 = request.getParameter("kor3");
		String seng3 = request.getParameter("eng3");
		String smat3 = request.getParameter("mat3");
		String sname3 = request.getParameter("name3");
		
		int kor3 = Integer.parseInt(request.getParameter("kor3"));
		int eng3 = Integer.parseInt(request.getParameter("eng3"));
		int mat3 = Integer.parseInt(request.getParameter("mat3"));
		int sum3 = kor3 + eng3 + mat3;
		double avg3 = Math.round((sum3 / 3.0)*100)/100.0;
		int num1 = (sum1 > sum2)? (sum1 > sum3)? 1 : 2 : (sum1 > sum3)? 2 : 3 ;	
		int num2 = (sum2 > sum1)? (sum2 > sum3)? 1 : 2 : (sum2 > sum3)? 2 : 3 ;	
		int num3 = (sum3 > sum1)? (sum3 > sum2)? 1 : 2 : (sum3 > sum2)? 2 : 3 ;	
	%>
	<style>
		div{
			border-style:solid;
		}
	</style>
	<div>
	<figcaption>
		<h1>성적처리
	</figcaption>
		<table border="1">
			<tr>
				<th>학생이름</th>
				<th>국어점수</th>
				<th>영어점수</th>
				<th>수학점수</th>
				<th>합 계</th>
				<th>평균</th>
				<th>등수</th>
			</tr>
			<tr>
				<td><%=sname1 %></td>
				<td><%=skor1 %></td>
				<td><%=seng1 %></td>
				<td><%=smat1 %></td>
				<td><%=sum1 %></td>
				<td><%=avg1 %></td>
				<td><%=num1 %></td>
			</tr>
			<tr>
				<td><%=sname2 %></td>
				<td><%=skor2 %></td>
				<td><%=seng2 %></td>
				<td><%=smat2 %></td>
				<td><%=sum2 %></td>
				<td><%=avg2 %></td>
				<td><%=num2 %></td>
			</tr>
			<tr>
				<td><%=sname3 %></td>
				<td><%=skor3 %></td>
				<td><%=seng3 %></td>
				<td><%=smat3 %></td>
				<td><%=sum3 %></td>
				<td><%=avg3 %></td>
				<td><%=num3 %></td>
			</tr>		
		</table>
		</div>
</body>
</html>